.class public final Landroidx/compose/ui/text/input/KeyboardType;
.super Ljava/lang/Object;
.source "KeyboardType.kt"


# static fields
.field private static final Ascii:I

.field public static final Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

.field private static final Decimal:I

.field private static final Email:I

.field private static final Number:I

.field private static final NumberPassword:I

.field private static final Password:I

.field private static final Phone:I

.field private static final Text:I

.field private static final Unspecified:I

.field private static final Uri:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/input/KeyboardType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/input/KeyboardType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    const/4 v0, 0x0

    .line 43
    invoke-static {v0}, Landroidx/compose/ui/text/input/KeyboardType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/KeyboardType;->Unspecified:I

    const/4 v0, 0x1

    .line 46
    invoke-static {v0}, Landroidx/compose/ui/text/input/KeyboardType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/KeyboardType;->Text:I

    const/4 v0, 0x2

    .line 49
    invoke-static {v0}, Landroidx/compose/ui/text/input/KeyboardType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/KeyboardType;->Ascii:I

    const/4 v0, 0x3

    .line 57
    invoke-static {v0}, Landroidx/compose/ui/text/input/KeyboardType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/KeyboardType;->Number:I

    const/4 v0, 0x4

    .line 60
    invoke-static {v0}, Landroidx/compose/ui/text/input/KeyboardType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/KeyboardType;->Phone:I

    const/4 v0, 0x5

    .line 63
    invoke-static {v0}, Landroidx/compose/ui/text/input/KeyboardType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/KeyboardType;->Uri:I

    const/4 v0, 0x6

    .line 66
    invoke-static {v0}, Landroidx/compose/ui/text/input/KeyboardType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/KeyboardType;->Email:I

    const/4 v0, 0x7

    .line 69
    invoke-static {v0}, Landroidx/compose/ui/text/input/KeyboardType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/KeyboardType;->Password:I

    const/16 v0, 0x8

    .line 72
    invoke-static {v0}, Landroidx/compose/ui/text/input/KeyboardType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/KeyboardType;->NumberPassword:I

    const/16 v0, 0x9

    .line 79
    invoke-static {v0}, Landroidx/compose/ui/text/input/KeyboardType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/KeyboardType;->Decimal:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/input/KeyboardType;->value:I

    return-void
.end method

.method public static final synthetic access$getAscii$cp()I
    .locals 1

    .line 22
    sget v0, Landroidx/compose/ui/text/input/KeyboardType;->Ascii:I

    return v0
.end method

.method public static final synthetic access$getDecimal$cp()I
    .locals 1

    .line 22
    sget v0, Landroidx/compose/ui/text/input/KeyboardType;->Decimal:I

    return v0
.end method

.method public static final synthetic access$getEmail$cp()I
    .locals 1

    .line 22
    sget v0, Landroidx/compose/ui/text/input/KeyboardType;->Email:I

    return v0
.end method

.method public static final synthetic access$getNumber$cp()I
    .locals 1

    .line 22
    sget v0, Landroidx/compose/ui/text/input/KeyboardType;->Number:I

    return v0
.end method

.method public static final synthetic access$getNumberPassword$cp()I
    .locals 1

    .line 22
    sget v0, Landroidx/compose/ui/text/input/KeyboardType;->NumberPassword:I

    return v0
.end method

.method public static final synthetic access$getPassword$cp()I
    .locals 1

    .line 22
    sget v0, Landroidx/compose/ui/text/input/KeyboardType;->Password:I

    return v0
.end method

.method public static final synthetic access$getPhone$cp()I
    .locals 1

    .line 22
    sget v0, Landroidx/compose/ui/text/input/KeyboardType;->Phone:I

    return v0
.end method

.method public static final synthetic access$getText$cp()I
    .locals 1

    .line 22
    sget v0, Landroidx/compose/ui/text/input/KeyboardType;->Text:I

    return v0
.end method

.method public static final synthetic access$getUnspecified$cp()I
    .locals 1

    .line 22
    sget v0, Landroidx/compose/ui/text/input/KeyboardType;->Unspecified:I

    return v0
.end method

.method public static final synthetic access$getUri$cp()I
    .locals 1

    .line 22
    sget v0, Landroidx/compose/ui/text/input/KeyboardType;->Uri:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/ui/text/input/KeyboardType;
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/input/KeyboardType;

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/input/KeyboardType;-><init>(I)V

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
    instance-of v0, p1, Landroidx/compose/ui/text/input/KeyboardType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/text/input/KeyboardType;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/KeyboardType;->unbox-impl()I

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

    .line 27
    sget v0, Landroidx/compose/ui/text/input/KeyboardType;->Unspecified:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Unspecified"

    goto/16 :goto_0

    .line 28
    :cond_0
    sget v0, Landroidx/compose/ui/text/input/KeyboardType;->Text:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Text"

    goto :goto_0

    .line 29
    :cond_1
    sget v0, Landroidx/compose/ui/text/input/KeyboardType;->Ascii:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Ascii"

    goto :goto_0

    .line 30
    :cond_2
    sget v0, Landroidx/compose/ui/text/input/KeyboardType;->Number:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Number"

    goto :goto_0

    .line 31
    :cond_3
    sget v0, Landroidx/compose/ui/text/input/KeyboardType;->Phone:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "Phone"

    goto :goto_0

    .line 32
    :cond_4
    sget v0, Landroidx/compose/ui/text/input/KeyboardType;->Uri:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "Uri"

    goto :goto_0

    .line 33
    :cond_5
    sget v0, Landroidx/compose/ui/text/input/KeyboardType;->Email:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "Email"

    goto :goto_0

    .line 34
    :cond_6
    sget v0, Landroidx/compose/ui/text/input/KeyboardType;->Password:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "Password"

    goto :goto_0

    .line 35
    :cond_7
    sget v0, Landroidx/compose/ui/text/input/KeyboardType;->NumberPassword:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "NumberPassword"

    goto :goto_0

    .line 36
    :cond_8
    sget v0, Landroidx/compose/ui/text/input/KeyboardType;->Decimal:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "Decimal"

    goto :goto_0

    .line 37
    :cond_9
    const-string p0, "Invalid"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget p0, p0, Landroidx/compose/ui/text/input/KeyboardType;->value:I

    invoke-static {p0, p1}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 0
    iget p0, p0, Landroidx/compose/ui/text/input/KeyboardType;->value:I

    invoke-static {p0}, Landroidx/compose/ui/text/input/KeyboardType;->hashCode-impl(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 25
    iget p0, p0, Landroidx/compose/ui/text/input/KeyboardType;->value:I

    invoke-static {p0}, Landroidx/compose/ui/text/input/KeyboardType;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()I
    .locals 0

    .line 0
    iget p0, p0, Landroidx/compose/ui/text/input/KeyboardType;->value:I

    return p0
.end method
