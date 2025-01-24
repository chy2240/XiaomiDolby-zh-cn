.class public final Landroidx/compose/ui/text/style/LineHeightStyle$Trim;
.super Ljava/lang/Object;
.source "LineHeightStyle.kt"


# static fields
.field private static final Both:I

.field public static final Companion:Landroidx/compose/ui/text/style/LineHeightStyle$Trim$Companion;

.field private static final FirstLineTop:I

.field private static final LastLineBottom:I

.field private static final None:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->Companion:Landroidx/compose/ui/text/style/LineHeightStyle$Trim$Companion;

    const/4 v0, 0x1

    .line 127
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->FirstLineTop:I

    const/16 v0, 0x10

    .line 148
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->LastLineBottom:I

    const/16 v0, 0x11

    .line 168
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->Both:I

    const/4 v0, 0x0

    .line 188
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->None:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->value:I

    return-void
.end method

.method public static final synthetic access$getBoth$cp()I
    .locals 1

    .line 91
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->Both:I

    return v0
.end method

.method public static final synthetic access$getNone$cp()I
    .locals 1

    .line 91
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->None:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/ui/text/style/LineHeightStyle$Trim;
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;-><init>(I)V

    return-object v0
.end method

.method private static constructor-impl(I)I
    .locals 0

    .line 0
    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;

    invoke-virtual {p1}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->unbox-impl()I

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

.method public static final isTrimFirstLineTop-impl$ui_text_release(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isTrimLastLineBottom-impl$ui_text_release(I)Z
    .locals 0

    .line 0
    and-int/lit8 p0, p0, 0x10

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 1

    .line 96
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->FirstLineTop:I

    if-ne p0, v0, :cond_0

    const-string p0, "LineHeightStyle.Trim.FirstLineTop"

    goto :goto_0

    .line 97
    :cond_0
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->LastLineBottom:I

    if-ne p0, v0, :cond_1

    const-string p0, "LineHeightStyle.Trim.LastLineBottom"

    goto :goto_0

    .line 98
    :cond_1
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->Both:I

    if-ne p0, v0, :cond_2

    const-string p0, "LineHeightStyle.Trim.Both"

    goto :goto_0

    .line 99
    :cond_2
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->None:I

    if-ne p0, v0, :cond_3

    const-string p0, "LineHeightStyle.Trim.None"

    goto :goto_0

    .line 100
    :cond_3
    const-string p0, "Invalid"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget p0, p0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->value:I

    invoke-static {p0, p1}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->equals-impl(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 0
    iget p0, p0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->value:I

    invoke-static {p0}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->hashCode-impl(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 94
    iget p0, p0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->value:I

    invoke-static {p0}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()I
    .locals 0

    .line 0
    iget p0, p0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->value:I

    return p0
.end method
