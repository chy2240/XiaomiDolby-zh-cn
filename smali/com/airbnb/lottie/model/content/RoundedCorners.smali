.class public Lcom/airbnb/lottie/model/content/RoundedCorners;
.super Ljava/lang/Object;
.source "RoundedCorners.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field private final cornerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/RoundedCorners;->name:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/airbnb/lottie/model/content/RoundedCorners;->cornerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    return-void
.end method


# virtual methods
.method public getCornerRadius()Lcom/airbnb/lottie/model/animatable/AnimatableValue;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/airbnb/lottie/model/content/RoundedCorners;->cornerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/airbnb/lottie/model/content/RoundedCorners;->name:Ljava/lang/String;

    return-object p0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 0

    .line 30
    new-instance p2, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;

    invoke-direct {p2, p1, p3, p0}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/RoundedCorners;)V

    return-object p2
.end method
