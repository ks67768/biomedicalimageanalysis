#include "itkImage.h"
#include "itkImageFileReader.h"
#include "itkImageFileWriter.h"
#include "itkResampleImageFilter.h"
#include "itkAffineTransform.h"
#include "itkTranslationTransform.h"
#include "itkLinearInterpolateImageFunction.h"
#include "itkScaleTransform.h"
#include "itkAffineTransform.h"

int main( int argc, char * argv[] )
{
    if( std::string(argv[1]) == "rotation" )
    {
        if (argc < 5 )
        {
            std::cerr << "Usage: " << std::endl;
            std::cerr << argv[0] << "  rotation  inputImageFile  outputImageFile  degrees" << std::endl;
            return EXIT_FAILURE;
        }
        const     unsigned int   Dimension = 3;
        typedef   unsigned char  InputPixelType;
        typedef   unsigned char  OutputPixelType;
        typedef itk::Image< InputPixelType,  Dimension >   InputImageType;
        typedef itk::Image< OutputPixelType, Dimension >   OutputImageType;
        typedef itk::ImageFileReader< InputImageType  >  ReaderType;
        typedef itk::ImageFileWriter< OutputImageType >  WriterType;
        ReaderType::Pointer reader = ReaderType::New();
        WriterType::Pointer writer = WriterType::New();
        reader->SetFileName( argv[2] );
        writer->SetFileName( argv[3] );
        const double angleInDegrees = atof( argv[4] );
        typedef itk::ResampleImageFilter<
        InputImageType, OutputImageType >  FilterType;
        FilterType::Pointer filter = FilterType::New();
        
        typedef itk::AffineTransform< double, Dimension >  TransformType;
        TransformType::Pointer transform = TransformType::New();

        typedef itk::LinearInterpolateImageFunction<
        InputImageType, double >  InterpolatorType;
        InterpolatorType::Pointer interpolator = InterpolatorType::New();
        filter->SetInterpolator( interpolator );
        filter->SetDefaultPixelValue( 100 );

        reader->Update();
        const InputImageType * inputImage = reader->GetOutput();
        const InputImageType::SpacingType & spacing = inputImage->GetSpacing();
        const InputImageType::PointType & origin  = inputImage->GetOrigin();
        InputImageType::SizeType size =
        inputImage->GetLargestPossibleRegion().GetSize();
        filter->SetOutputOrigin( origin );
        filter->SetOutputSpacing( spacing );
        filter->SetOutputDirection( inputImage->GetDirection() );
        filter->SetSize( size );

        filter->SetInput( reader->GetOutput() );
        writer->SetInput( filter->GetOutput() );

        TransformType::OutputVectorType translation1;
        const double imageCenterX = origin[0] + spacing[0] * size[0] / 2.0;
        const double imageCenterY = origin[1] + spacing[1] * size[1] / 2.0;
        translation1[0] =   -imageCenterX;
        translation1[1] =   -imageCenterY;
        transform->Translate( translation1 );

        const double degreesToRadians = std::atan(1.0) / 45.0;
        const double angle = angleInDegrees * degreesToRadians;
        transform->Rotate3D( -angle, false );

        TransformType::OutputVectorType translation2;
        translation2[0] =   imageCenterX;
        translation2[1] =   imageCenterY;
        transform->Translate( translation2, false );
        filter->SetTransform( transform );
        
        try
        {
            writer->Update();
        }
        catch( itk::ExceptionObject & excep )
        {
            std::cerr << "Exception caught !" << std::endl;
            std::cerr << excep << std::endl;
        }

        return EXIT_SUCCESS;
    }
 
    if( std::string(argv[1]) == "translation" )
    {
        if( argc != 6 )
        {
            std::cerr << "Usage: "<< std::endl;
            std::cerr << argv[0];
            std::cerr << "  translation  inputImageFile  outputImageFile  translationX  translationY";
            std::cerr << std::endl;
            return EXIT_FAILURE;
        }
        
        const char * inputFileName = argv[2];
        const char * outputFileName = argv[3];
        
        const unsigned int Dimension = 3;
        typedef unsigned char PixelType;
        typedef itk::Image< PixelType, Dimension > ImageType;
        
        typedef itk::ImageFileReader< ImageType > ReaderType;
        ReaderType::Pointer reader = ReaderType::New();
        reader->SetFileName( inputFileName );
        reader->UpdateOutputInformation();
        
        typedef itk::TranslationTransform< double, Dimension > TransformType;

        TransformType::OutputVectorType vector;
        vector[0] = atof( argv[4] );
        vector[1] = atof( argv[5] );
        
        TransformType::Pointer translation = TransformType::New();
        translation->Translate( vector );
        
        typedef itk::ResampleImageFilter<ImageType, ImageType> ResampleImageFilterType;
        ResampleImageFilterType::Pointer resampleFilter = ResampleImageFilterType::New();
        resampleFilter->SetTransform( translation.GetPointer() );
        resampleFilter->SetInput( reader->GetOutput() );
        resampleFilter->SetSize( reader->GetOutput()->GetLargestPossibleRegion().GetSize() );
        
        typedef itk::ImageFileWriter< ImageType > WriterType;
        WriterType::Pointer writer = WriterType::New();
        writer->SetFileName( outputFileName );
        writer->SetInput( resampleFilter->GetOutput() );
        try
        {
            writer->Update();
        }
        catch( itk::ExceptionObject & error )
        {
            std::cerr << "Error: " << error << std::endl;
            return EXIT_FAILURE;
        }
    }
    
    if( std::string(argv[1]) == "scaling" )
    {
        if( argc != 5 )
        {
            std::cerr << "Usage: "<< std::endl;
            std::cerr << argv[0];
            std::cerr << "  scaling  inputImageFile  outputImageFile  scale";
            std::cerr << std::endl;
            return EXIT_FAILURE;
        }
        const char * inputFileName = argv[2];
        const char * outputFileName = argv[3];
        const float scale = atof( argv[4] );
        const unsigned int Dimension = 3;
        typedef unsigned char                       PixelType;
        typedef itk::Image< PixelType, Dimension >  ImageType;
        typedef double                              ScalarType;
        typedef itk::ImageFileReader< ImageType >  ReaderType;
        ReaderType::Pointer reader = ReaderType::New();
        reader->SetFileName( inputFileName );
        reader->Update();
        ImageType::Pointer inputImage = reader->GetOutput();
        ImageType::RegionType region = inputImage->GetLargestPossibleRegion();
        ImageType::SizeType size = region.GetSize();
        ImageType::SpacingType spacing = inputImage->GetSpacing();
        itk::Index< Dimension > centralPixel;
        centralPixel[0] = size[0] / 2;
        centralPixel[1] = size[1] / 2;
        itk::Point< ScalarType, Dimension > centralPoint;
        centralPoint[0] = centralPixel[0];
        centralPoint[1] = centralPixel[1];
        typedef itk::ScaleTransform< ScalarType, Dimension > ScaleTransformType;
        ScaleTransformType::Pointer scaleTransform = ScaleTransformType::New();
        ScaleTransformType::ParametersType parameters = scaleTransform->GetParameters();
        parameters[0] = scale;
        parameters[1] = scale;
        scaleTransform->SetParameters( parameters );
        scaleTransform->SetCenter( centralPoint );
        typedef itk::LinearInterpolateImageFunction< ImageType, ScalarType > LinearInterpolatorType;
        LinearInterpolatorType::Pointer interpolator = LinearInterpolatorType::New();
        typedef itk::ResampleImageFilter< ImageType, ImageType > ResampleFilterType;
        ResampleFilterType::Pointer resampleFilter = ResampleFilterType::New();
        resampleFilter->SetInput( inputImage );
        resampleFilter->SetTransform( scaleTransform );
        resampleFilter->SetInterpolator( interpolator );
        resampleFilter->SetSize( size );
        resampleFilter->SetOutputSpacing( spacing );
        typedef itk::ImageFileWriter< ImageType > WriterType;
        WriterType::Pointer writer = WriterType::New();
        writer->SetFileName( outputFileName );
        writer->SetInput( resampleFilter->GetOutput() );
        try
        {
            writer->Update();
        }
        catch( itk::ExceptionObject & error )
        {
            std::cerr << "Error: " << error << std::endl;
            return EXIT_FAILURE;
        }
    }
    return EXIT_SUCCESS;
}
