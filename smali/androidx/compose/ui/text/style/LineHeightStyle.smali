.class public final Landroidx/compose/ui/text/style/LineHeightStyle;
.super Ljava/lang/Object;
.source "LineHeightStyle.kt"


# static fields
.field public static final Companion:Landroidx/compose/ui/text/style/LineHeightStyle$Companion;

.field private static final Default:Landroidx/compose/ui/text/style/LineHeightStyle;


# instance fields
.field private final alignment:F

.field private final mode:I

.field private final trim:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/compose/ui/text/style/LineHeightStyle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/LineHeightStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/LineHeightStyle;->Companion:Landroidx/compose/ui/text/style/LineHeightStyle$Companion;

    .line 54
    new-instance v0, Landroidx/compose/ui/text/style/LineHeightStyle;

    sget-object v2, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Companion:Landroidx/compose/ui/text/style/LineHeightStyle$Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment$Companion;->getProportional-PIaL0Z0()F

    move-result v2

    sget-object v3, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->Companion:Landroidx/compose/ui/text/style/LineHeightStyle$Trim$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim$Companion;->getBoth-EVpEnUU()I

    move-result v3

    sget-object v4, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->Companion:Landroidx/compose/ui/text/style/LineHeightStyle$Mode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/style/LineHeightStyle$Mode$Companion;->getFixed-lzQqcRY()I

    move-result v4

    invoke-direct {v0, v2, v3, v4, v1}, Landroidx/compose/ui/text/style/LineHeightStyle;-><init>(FIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/LineHeightStyle;->Default:Landroidx/compose/ui/text/style/LineHeightStyle;

    return-void
.end method

.method private constructor <init>(FI)V
    .locals 2

    .line 44
    sget-object v0, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->Companion:Landroidx/compose/ui/text/style/LineHeightStyle$Mode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Mode$Companion;->getFixed-lzQqcRY()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/ui/text/style/LineHeightStyle;-><init>(FIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(FII)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:F

    iput p2, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    iput p3, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->mode:I

    return-void
.end method

.method public synthetic constructor <init>(FIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/text/style/LineHeightStyle;-><init>(FII)V

    return-void
.end method

.method public synthetic constructor <init>(FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/style/LineHeightStyle;-><init>(FI)V

    return-void
.end method

.method public static final synthetic access$getDefault$cp()Landroidx/compose/ui/text/style/LineHeightStyle;
    .locals 1

    .line 42
    sget-object v0, Landroidx/compose/ui/text/style/LineHeightStyle;->Default:Landroidx/compose/ui/text/style/LineHeightStyle;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 66
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/style/LineHeightStyle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 68
    :cond_1
    iget v1, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:F

    check-cast p1, Landroidx/compose/ui/text/style/LineHeightStyle;

    iget v3, p1, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:F

    invoke-static {v1, v3}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 69
    :cond_2
    iget v1, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    iget v3, p1, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    invoke-static {v1, v3}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 70
    :cond_3
    iget p0, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->mode:I

    iget p1, p1, Landroidx/compose/ui/text/style/LineHeightStyle;->mode:I

    invoke-static {p0, p1}, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->equals-impl0(II)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAlignment-PIaL0Z0()F
    .locals 0

    .line 42
    iget p0, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:F

    return p0
.end method

.method public final getMode-lzQqcRY()I
    .locals 0

    .line 42
    iget p0, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->mode:I

    return p0
.end method

.method public final getTrim-EVpEnUU()I
    .locals 0

    .line 42
    iget p0, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 76
    iget v0, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:F

    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->hashCode-impl(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 77
    iget v1, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    invoke-static {v1}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 78
    iget p0, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->mode:I

    invoke-static {p0}, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->hashCode-impl(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LineHeightStyle(alignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:F

    invoke-static {v1}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->toString-impl(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    invoke-static {v1}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->mode:I

    invoke-static {p0}, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
