.class Lcom/airbnb/lottie/model/layer/TextLayer$2;
.super Landroid/graphics/Paint;
.source "TextLayer.java"


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/model/layer/TextLayer;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/model/layer/TextLayer;I)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer$2;->this$0:Lcom/airbnb/lottie/model/layer/TextLayer;

    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 48
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method
