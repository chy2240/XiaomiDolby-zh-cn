.class public final Landroidx/compose/ui/graphics/ImageBitmapConfig;
.super Ljava/lang/Object;
.source "ImageBitmap.kt"


# static fields
.field private static final Alpha8:I

.field private static final Argb8888:I

.field public static final Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

.field private static final F16:I

.field private static final Gpu:I

.field private static final Rgb565:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    const/4 v0, 0x0

    .line 152
    invoke-static {v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Argb8888:I

    const/4 v0, 0x1

    .line 159
    invoke-static {v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Alpha8:I

    const/4 v0, 0x2

    .line 181
    invoke-static {v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Rgb565:I

    const/4 v0, 0x3

    .line 198
    invoke-static {v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->F16:I

    const/4 v0, 0x4

    .line 207
    invoke-static {v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Gpu:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->value:I

    return-void
.end method

.method public static final synthetic access$getAlpha8$cp()I
    .locals 1

    .line 132
    sget v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Alpha8:I

    return v0
.end method

.method public static final synthetic access$getArgb8888$cp()I
    .locals 1

    .line 132
    sget v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Argb8888:I

    return v0
.end method

.method public static final synthetic access$getF16$cp()I
    .locals 1

    .line 132
    sget v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->F16:I

    return v0
.end method

.method public static final synthetic access$getGpu$cp()I
    .locals 1

    .line 132
    sget v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Gpu:I

    return v0
.end method

.method public static final synthetic access$getRgb565$cp()I
    .locals 1

    .line 132
    sget v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Rgb565:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/ui/graphics/ImageBitmapConfig;
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/ImageBitmapConfig;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    .line 0
    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Landroidx/compose/ui/graphics/ImageBitmapConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/graphics/ImageBitmapConfig;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->unbox-impl()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    .line 0
    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hashCode-impl(I)I
    .locals 0

    .line 0
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 1

    .line 212
    sget v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Argb8888:I

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Argb8888"

    goto :goto_0

    .line 213
    :cond_0
    sget v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Alpha8:I

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Alpha8"

    goto :goto_0

    .line 214
    :cond_1
    sget v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Rgb565:I

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Rgb565"

    goto :goto_0

    .line 215
    :cond_2
    sget v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->F16:I

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "F16"

    goto :goto_0

    .line 216
    :cond_3
    sget v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Gpu:I

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "Gpu"

    goto :goto_0

    .line 217
    :cond_4
    const-string p0, "Unknown"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget p0, p0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->value:I

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 0
    iget p0, p0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->value:I

    invoke-static {p0}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->hashCode-impl(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 210
    iget p0, p0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->value:I

    invoke-static {p0}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()I
    .locals 0

    .line 0
    iget p0, p0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->value:I

    return p0
.end method
