.class public Lcom/google/android/setupdesign/view/FillContentLayout;
.super Landroid/widget/FrameLayout;
.source "FillContentLayout.java"


# instance fields
.field private maxHeight:I

.field private maxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/google/android/setupdesign/view/FillContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 54
    sget v0, Lcom/google/android/setupdesign/R$attr;->sudFillContentLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/setupdesign/view/FillContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/view/FillContentLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static getMaxSizeMeasureSpec(III)I
    .locals 2

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    .line 129
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    if-ltz p2, :cond_0

    .line 133
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 136
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    const/high16 p1, -0x80000000

    .line 140
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_2
    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 63
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 67
    :cond_0
    sget-object v0, Lcom/google/android/setupdesign/R$styleable;->SudFillContentLayout:[I

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 70
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p3

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ILLUSTRATION_MAX_HEIGHT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 71
    invoke-virtual {p3, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result p3

    const/4 v1, -0x1

    if-eqz p3, :cond_1

    .line 74
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p3

    .line 75
    invoke-virtual {p3, p1, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/google/android/setupdesign/view/FillContentLayout;->maxHeight:I

    goto :goto_0

    .line 77
    :cond_1
    sget p3, Lcom/google/android/setupdesign/R$styleable;->SudFillContentLayout_android_maxHeight:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/setupdesign/view/FillContentLayout;->maxHeight:I

    .line 80
    :goto_0
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p3

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ILLUSTRATION_MAX_WIDTH:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 81
    invoke-virtual {p3, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 84
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p3

    .line 85
    invoke-virtual {p3, p1, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/setupdesign/view/FillContentLayout;->maxWidth:I

    goto :goto_1

    .line 87
    :cond_2
    sget p1, Lcom/google/android/setupdesign/R$styleable;->SudFillContentLayout_android_maxWidth:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/setupdesign/view/FillContentLayout;->maxWidth:I

    .line 90
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private measureIllustrationChild(Landroid/view/View;II)V
    .locals 3

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 113
    iget v1, p0, Lcom/google/android/setupdesign/view/FillContentLayout;->maxWidth:I

    .line 115
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 116
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 114
    invoke-static {p2, v1, v2}, Lcom/google/android/setupdesign/view/FillContentLayout;->getMaxSizeMeasureSpec(III)I

    move-result p2

    .line 118
    iget v1, p0, Lcom/google/android/setupdesign/view/FillContentLayout;->maxHeight:I

    .line 120
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 121
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p0

    add-int/2addr v1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 119
    invoke-static {p3, v1, p0}, Lcom/google/android/setupdesign/view/FillContentLayout;->getMaxSizeMeasureSpec(III)I

    move-result p0

    .line 124
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .line 99
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/widget/FrameLayout;->getDefaultSize(II)I

    move-result p1

    .line 100
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/widget/FrameLayout;->getDefaultSize(II)I

    move-result p2

    .line 98
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 102
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 104
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/setupdesign/view/FillContentLayout;->measureIllustrationChild(Landroid/view/View;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
