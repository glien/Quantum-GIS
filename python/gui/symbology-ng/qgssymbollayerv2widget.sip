class QgsSymbolLayerV2Widget : QWidget
{
%TypeHeaderCode
#include <qgssymbollayerv2widget.h>
%End

  public:
    QgsSymbolLayerV2Widget( QWidget* parent, const QgsVectorLayer* vl = 0 );
    virtual ~QgsSymbolLayerV2Widget();

    virtual void setSymbolLayer( QgsSymbolLayerV2* layer ) = 0;
    virtual QgsSymbolLayerV2* symbolLayer() = 0;

  signals:
    void changed();
};

///////////

class QgsSimpleLineSymbolLayerV2Widget : QgsSymbolLayerV2Widget
{
%TypeHeaderCode
#include <qgssymbollayerv2widget.h>
%End

  public:
    QgsSimpleLineSymbolLayerV2Widget( const QgsVectorLayer* vl, QWidget* parent = NULL );

    static QgsSymbolLayerV2Widget* create( const QgsVectorLayer* vl ) /Factory/;

    // from base class
    virtual void setSymbolLayer( QgsSymbolLayerV2* layer );
    virtual QgsSymbolLayerV2* symbolLayer();

  public slots:
    void penWidthChanged();
    void colorChanged( const QColor& color );
    void penStyleChanged();
    void offsetChanged();
    void on_mCustomCheckBox_stateChanged( int state );
    void on_mChangePatternButton_clicked();


  protected:
    //creates a new icon for the 'change pattern' button
    void updatePatternIcon();
};

///////////

class QgsSimpleMarkerSymbolLayerV2Widget : QgsSymbolLayerV2Widget
{
%TypeHeaderCode
#include <qgssymbollayerv2widget.h>
%End

  public:
    QgsSimpleMarkerSymbolLayerV2Widget( const QgsVectorLayer* vl, QWidget* parent = NULL );

    static QgsSymbolLayerV2Widget* create( const QgsVectorLayer* vl ) /Factory/;

    // from base class
    virtual void setSymbolLayer( QgsSymbolLayerV2* layer );
    virtual QgsSymbolLayerV2* symbolLayer();

  public slots:
    void setName();
    void setColorBorder( const QColor& color );
    void setColorFill( const QColor& color );
    void setSize();
    void setAngle();
    void setOffset();
};

///////////

class QgsSimpleFillSymbolLayerV2Widget : QgsSymbolLayerV2Widget
{
%TypeHeaderCode
#include <qgssymbollayerv2widget.h>
%End

  public:
    QgsSimpleFillSymbolLayerV2Widget( const QgsVectorLayer* vl, QWidget* parent = NULL );

    static QgsSymbolLayerV2Widget* create( const QgsVectorLayer* vl ) /Factory/;

    // from base class
    virtual void setSymbolLayer( QgsSymbolLayerV2* layer );
    virtual QgsSymbolLayerV2* symbolLayer();

  public slots:
    void setColor( const QColor& color );
    void setBorderColor( const QColor& color );
    void setBrushStyle();
    void borderWidthChanged();
    void borderStyleChanged();
    void offsetChanged();
};


///////////

class QgsMarkerLineSymbolLayerV2Widget : QgsSymbolLayerV2Widget
{
%TypeHeaderCode
#include <qgssymbollayerv2widget.h>
%End
  public:
    QgsMarkerLineSymbolLayerV2Widget( const QgsVectorLayer* vl, QWidget* parent = NULL );

    static QgsSymbolLayerV2Widget* create( const QgsVectorLayer* vl ) /Factory/;

    // from base class
    virtual void setSymbolLayer( QgsSymbolLayerV2* layer );
    virtual QgsSymbolLayerV2* symbolLayer();

  public slots:

    void setInterval( double val );
    void setRotate();
    void setOffset();
    void setPlacement();

};


///////////

class QgsSvgMarkerSymbolLayerV2Widget : QgsSymbolLayerV2Widget
{
%TypeHeaderCode
#include <qgssymbollayerv2widget.h>
%End

  public:
    QgsSvgMarkerSymbolLayerV2Widget( const QgsVectorLayer* vl, QWidget* parent = NULL );

    static QgsSymbolLayerV2Widget* create( const QgsVectorLayer* vl ) /Factory/;

    // from base class
    virtual void setSymbolLayer( QgsSymbolLayerV2* layer );
    virtual QgsSymbolLayerV2* symbolLayer();

  public slots:
    void setName( const QModelIndex& idx );
    void populateIcons( const QModelIndex& idx );
    void setSize();
    void setAngle();
    void setOffset();
    void on_mFileToolButton_clicked();
    void on_mFileLineEdit_textEdited( const QString& text );
    void on_mChangeColorButton_colorChanged( const QColor& color );
    void on_mChangeBorderColorButton_colorChanged( const QColor& color );
    void on_mBorderWidthSpinBox_valueChanged( double d );

  protected:

    void populateList();
    //update gui for svg file (insert new path, update activation of gui elements for svg params)
    void setGuiForSvg( const QgsSvgMarkerSymbolLayerV2* layer );
};


///////////

class QgsLineDecorationSymbolLayerV2Widget : QgsSymbolLayerV2Widget
{
%TypeHeaderCode
#include <qgssymbollayerv2widget.h>
%End

  public:
    QgsLineDecorationSymbolLayerV2Widget( const QgsVectorLayer* vl, QWidget* parent = NULL );

    static QgsSymbolLayerV2Widget* create( const QgsVectorLayer* vl ) /Factory/;

    // from base class
    virtual void setSymbolLayer( QgsSymbolLayerV2* layer );
    virtual QgsSymbolLayerV2* symbolLayer();

  public slots:
    void colorChanged( const QColor& color );
    void penWidthChanged();
};

//////////

class QgsSVGFillSymbolLayerWidget : QgsSymbolLayerV2Widget
{
%TypeHeaderCode
#include <qgssymbollayerv2widget.h>
%End

  public:
    QgsSVGFillSymbolLayerWidget( const QgsVectorLayer* vl, QWidget* parent = NULL );

    static QgsSymbolLayerV2Widget* create( const QgsVectorLayer* vl ) /Factory/;

    // from base class
    virtual void setSymbolLayer( QgsSymbolLayerV2* layer );
    virtual QgsSymbolLayerV2* symbolLayer();
};

//////////

class QgsLinePatternFillSymbolLayerWidget : QgsSymbolLayerV2Widget
{
%TypeHeaderCode
#include <qgssymbollayerv2widget.h>
%End
  public:
    QgsLinePatternFillSymbolLayerWidget( const QgsVectorLayer* vl, QWidget* parent = NULL );
    static QgsSymbolLayerV2Widget* create( const QgsVectorLayer* vl ) /Factory/;

    virtual void setSymbolLayer( QgsSymbolLayerV2* layer );
    virtual QgsSymbolLayerV2* symbolLayer();
};

//////////

class QgsPointPatternFillSymbolLayerWidget: QgsSymbolLayerV2Widget
{
%TypeHeaderCode
#include <qgssymbollayerv2widget.h>
%End

  public:
    QgsPointPatternFillSymbolLayerWidget( const QgsVectorLayer* vl, QWidget* parent = NULL );
    static QgsSymbolLayerV2Widget* create( const QgsVectorLayer* vl ) /Factory/;

    virtual void setSymbolLayer( QgsSymbolLayerV2* layer );
    virtual QgsSymbolLayerV2* symbolLayer();
};

/////////

class QgsFontMarkerSymbolLayerV2Widget : QgsSymbolLayerV2Widget
{
%TypeHeaderCode
#include <qgssymbollayerv2widget.h>
%End

  public:
    QgsFontMarkerSymbolLayerV2Widget( const QgsVectorLayer* vl, QWidget* parent = NULL );

    static QgsSymbolLayerV2Widget* create( const QgsVectorLayer* vl ) /Factory/;

    // from base class
    virtual void setSymbolLayer( QgsSymbolLayerV2* layer );
    virtual QgsSymbolLayerV2* symbolLayer();

  public slots:
    void setFontFamily( const QFont& font );
    void setColor( const QColor& color );
    void setSize( double size );
    void setAngle( double angle );
    void setCharacter( const QChar& chr );
    void setOffset();
};

//////////

class QgsCentroidFillSymbolLayerV2Widget : QgsSymbolLayerV2Widget
{
%TypeHeaderCode
#include <qgssymbollayerv2widget.h>
%End

  public:
    QgsCentroidFillSymbolLayerV2Widget( const QgsVectorLayer* vl, QWidget* parent = NULL );

    static QgsSymbolLayerV2Widget* create( const QgsVectorLayer* vl ) /Factory/;

    // from base class
    virtual void setSymbolLayer( QgsSymbolLayerV2* layer );
    virtual QgsSymbolLayerV2* symbolLayer();
};
