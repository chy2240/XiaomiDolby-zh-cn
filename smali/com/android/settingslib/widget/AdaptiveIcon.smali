.class public Lcom/android/settingslib/widget/AdaptiveIcon;
.super Landroid/graphics/drawable/LayerDrawable;
.source "AdaptiveIcon.java"


# instance fields
.field private mAdaptiveConstantState:Lcom/android/settingslib/widget/AdaptiveIcon$AdaptiveConstantState;

.field mBackgroundColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 49
    sget v0, Lcom/android/settingslib/widget/adaptiveicon/R$dimen;->dashboard_tile_foreground_image_inset:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/widget/AdaptiveIcon;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V
    .locals 7

    const/4 v0, 0x2

    .line 53
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/android/settingslib/widget/AdaptiveIconShapeDrawable;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/widget/AdaptiveIconShapeDrawable;-><init>(Landroid/content/res/Resources;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 53
    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/android/settingslib/widget/AdaptiveIcon;->mBackgroundColor:I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v2, 0x1

    move-object v1, p0

    move v3, v6

    move v4, v6

    move v5, v6

    .line 58
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 59
    new-instance p3, Lcom/android/settingslib/widget/AdaptiveIcon$AdaptiveConstantState;

    invoke-direct {p3, p1, p2}, Lcom/android/settingslib/widget/AdaptiveIcon$AdaptiveConstantState;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object p3, p0, Lcom/android/settingslib/widget/AdaptiveIcon;->mAdaptiveConstantState:Lcom/android/settingslib/widget/AdaptiveIcon$AdaptiveConstantState;

    return-void
.end method


# virtual methods
.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settingslib/widget/AdaptiveIcon;->mAdaptiveConstantState:Lcom/android/settingslib/widget/AdaptiveIcon$AdaptiveConstantState;

    return-object p0
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .line 98
    iput p1, p0, Lcom/android/settingslib/widget/AdaptiveIcon;->mBackgroundColor:I

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting background color "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/widget/AdaptiveIcon;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveHomepageIcon"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p0, p0, Lcom/android/settingslib/widget/AdaptiveIcon;->mAdaptiveConstantState:Lcom/android/settingslib/widget/AdaptiveIcon$AdaptiveConstantState;

    iput p1, p0, Lcom/android/settingslib/widget/AdaptiveIcon$AdaptiveConstantState;->mColor:I

    return-void
.end method
