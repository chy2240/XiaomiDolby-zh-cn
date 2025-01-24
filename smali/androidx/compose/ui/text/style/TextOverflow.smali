.class public abstract Landroidx/compose/ui/text/style/TextOverflow;
.super Ljava/lang/Object;
.source "TextOverflow.kt"


# static fields
.field private static final Clip:I

.field public static final Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

.field private static final Ellipsis:I

.field private static final MiddleEllipsis:I

.field private static final StartEllipsis:I

.field private static final Visible:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/style/TextOverflow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/TextOverflow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    const/4 v0, 0x1

    .line 42
    invoke-static {v0}, Landroidx/compose/ui/text/style/TextOverflow;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/TextOverflow;->Clip:I

    const/4 v0, 0x2

    .line 51
    invoke-static {v0}, Landroidx/compose/ui/text/style/TextOverflow;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/TextOverflow;->Ellipsis:I

    const/4 v0, 0x3

    .line 72
    invoke-static {v0}, Landroidx/compose/ui/text/style/TextOverflow;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/TextOverflow;->Visible:I

    const/4 v0, 0x4

    .line 84
    invoke-static {v0}, Landroidx/compose/ui/text/style/TextOverflow;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/TextOverflow;->StartEllipsis:I

    const/4 v0, 0x5

    .line 96
    invoke-static {v0}, Landroidx/compose/ui/text/style/TextOverflow;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/TextOverflow;->MiddleEllipsis:I

    return-void
.end method

.method public static final synthetic access$getClip$cp()I
    .locals 1

    .line 22
    sget v0, Landroidx/compose/ui/text/style/TextOverflow;->Clip:I

    return v0
.end method

.method public static final synthetic access$getEllipsis$cp()I
    .locals 1

    .line 22
    sget v0, Landroidx/compose/ui/text/style/TextOverflow;->Ellipsis:I

    return v0
.end method

.method public static final synthetic access$getMiddleEllipsis$cp()I
    .locals 1

    .line 22
    sget v0, Landroidx/compose/ui/text/style/TextOverflow;->MiddleEllipsis:I

    return v0
.end method

.method public static final synthetic access$getStartEllipsis$cp()I
    .locals 1

    .line 22
    sget v0, Landroidx/compose/ui/text/style/TextOverflow;->StartEllipsis:I

    return v0
.end method

.method public static final synthetic access$getVisible$cp()I
    .locals 1

    .line 22
    sget v0, Landroidx/compose/ui/text/style/TextOverflow;->Visible:I

    return v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    .line 0
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

    .line 27
    sget v0, Landroidx/compose/ui/text/style/TextOverflow;->Clip:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Clip"

    goto :goto_0

    .line 28
    :cond_0
    sget v0, Landroidx/compose/ui/text/style/TextOverflow;->Ellipsis:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Ellipsis"

    goto :goto_0

    .line 29
    :cond_1
    sget v0, Landroidx/compose/ui/text/style/TextOverflow;->MiddleEllipsis:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "MiddleEllipsis"

    goto :goto_0

    .line 30
    :cond_2
    sget v0, Landroidx/compose/ui/text/style/TextOverflow;->Visible:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Visible"

    goto :goto_0

    .line 31
    :cond_3
    sget v0, Landroidx/compose/ui/text/style/TextOverflow;->StartEllipsis:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "StartEllipsis"

    goto :goto_0

    .line 32
    :cond_4
    const-string p0, "Invalid"

    :goto_0
    return-object p0
.end method
