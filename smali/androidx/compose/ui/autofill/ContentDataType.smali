.class public abstract Landroidx/compose/ui/autofill/ContentDataType;
.super Ljava/lang/Object;
.source "ContentDataType.android.kt"


# static fields
.field public static final Companion:Landroidx/compose/ui/autofill/ContentDataType$Companion;

.field private static final Date:I

.field private static final List:I

.field private static final None:I

.field private static final Text:I

.field private static final Toggle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/autofill/ContentDataType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/autofill/ContentDataType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/autofill/ContentDataType;->Companion:Landroidx/compose/ui/autofill/ContentDataType$Companion;

    const/4 v0, 0x1

    .line 31
    invoke-static {v0}, Landroidx/compose/ui/autofill/ContentDataType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/autofill/ContentDataType;->Text:I

    const/4 v0, 0x3

    .line 32
    invoke-static {v0}, Landroidx/compose/ui/autofill/ContentDataType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/autofill/ContentDataType;->List:I

    const/4 v0, 0x4

    .line 33
    invoke-static {v0}, Landroidx/compose/ui/autofill/ContentDataType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/autofill/ContentDataType;->Date:I

    const/4 v0, 0x2

    .line 34
    invoke-static {v0}, Landroidx/compose/ui/autofill/ContentDataType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/autofill/ContentDataType;->Toggle:I

    const/4 v0, 0x0

    .line 35
    invoke-static {v0}, Landroidx/compose/ui/autofill/ContentDataType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/autofill/ContentDataType;->None:I

    return-void
.end method

.method public static final synthetic access$getDate$cp()I
    .locals 1

    .line 28
    sget v0, Landroidx/compose/ui/autofill/ContentDataType;->Date:I

    return v0
.end method

.method public static final synthetic access$getList$cp()I
    .locals 1

    .line 28
    sget v0, Landroidx/compose/ui/autofill/ContentDataType;->List:I

    return v0
.end method

.method public static final synthetic access$getText$cp()I
    .locals 1

    .line 28
    sget v0, Landroidx/compose/ui/autofill/ContentDataType;->Text:I

    return v0
.end method

.method public static final synthetic access$getToggle$cp()I
    .locals 1

    .line 28
    sget v0, Landroidx/compose/ui/autofill/ContentDataType;->Toggle:I

    return v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    .line 0
    return p0
.end method
