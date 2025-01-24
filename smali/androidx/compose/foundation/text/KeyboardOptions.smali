.class public final Landroidx/compose/foundation/text/KeyboardOptions;
.super Ljava/lang/Object;
.source "KeyboardOptions.kt"


# static fields
.field public static final Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

.field private static final Default:Landroidx/compose/foundation/text/KeyboardOptions;

.field private static final SecureTextField:Landroidx/compose/foundation/text/KeyboardOptions;


# instance fields
.field private final autoCorrectEnabled:Ljava/lang/Boolean;

.field private final capitalization:I

.field private final hintLocales:Landroidx/compose/ui/text/intl/LocaleList;

.field private final imeAction:I

.field private final keyboardType:I

.field private final showKeyboardOnFocus:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v0, Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/KeyboardOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/text/KeyboardOptions;->Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    .line 69
    new-instance v0, Landroidx/compose/foundation/text/KeyboardOptions;

    const/16 v10, 0x7f

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(ILjava/lang/Boolean;IILandroidx/compose/ui/text/input/PlatformImeOptions;Ljava/lang/Boolean;Landroidx/compose/ui/text/intl/LocaleList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/text/KeyboardOptions;->Default:Landroidx/compose/foundation/text/KeyboardOptions;

    .line 74
    new-instance v0, Landroidx/compose/foundation/text/KeyboardOptions;

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getPassword-PjHm6EE()I

    move-result v15

    const/16 v20, 0x79

    const/16 v21, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v21}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(ILjava/lang/Boolean;IILandroidx/compose/ui/text/input/PlatformImeOptions;Ljava/lang/Boolean;Landroidx/compose/ui/text/intl/LocaleList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/text/KeyboardOptions;->SecureTextField:Landroidx/compose/foundation/text/KeyboardOptions;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Boolean;IILandroidx/compose/ui/text/input/PlatformImeOptions;Ljava/lang/Boolean;Landroidx/compose/ui/text/intl/LocaleList;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->capitalization:I

    .line 59
    iput-object p2, p0, Landroidx/compose/foundation/text/KeyboardOptions;->autoCorrectEnabled:Ljava/lang/Boolean;

    .line 60
    iput p3, p0, Landroidx/compose/foundation/text/KeyboardOptions;->keyboardType:I

    .line 61
    iput p4, p0, Landroidx/compose/foundation/text/KeyboardOptions;->imeAction:I

    .line 63
    iput-object p6, p0, Landroidx/compose/foundation/text/KeyboardOptions;->showKeyboardOnFocus:Ljava/lang/Boolean;

    .line 64
    iput-object p7, p0, Landroidx/compose/foundation/text/KeyboardOptions;->hintLocales:Landroidx/compose/ui/text/intl/LocaleList;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Boolean;IILandroidx/compose/ui/text/input/PlatformImeOptions;Ljava/lang/Boolean;Landroidx/compose/ui/text/intl/LocaleList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Companion:Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;->getUnspecified-IUNYP9k()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    and-int/lit8 v1, p8, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 v3, p8, 0x4

    if-eqz v3, :cond_2

    .line 60
    sget-object v3, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getUnspecified-PjHm6EE()I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, p3

    :goto_2
    and-int/lit8 v4, p8, 0x8

    if-eqz v4, :cond_3

    .line 61
    sget-object v4, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getUnspecified-eUduSuo()I

    move-result v4

    goto :goto_3

    :cond_3
    move v4, p4

    :goto_3
    and-int/lit8 v5, p8, 0x10

    if-eqz v5, :cond_4

    move-object v5, v2

    goto :goto_4

    :cond_4
    move-object v5, p5

    :goto_4
    and-int/lit8 v6, p8, 0x20

    if-eqz v6, :cond_5

    move-object v6, v2

    goto :goto_5

    :cond_5
    move-object v6, p6

    :goto_5
    and-int/lit8 v7, p8, 0x40

    if-eqz v7, :cond_6

    goto :goto_6

    :cond_6
    move-object v2, p7

    :goto_6
    const/4 v7, 0x0

    move p1, v0

    move-object p2, v1

    move p3, v3

    move p4, v4

    move-object p5, v5

    move-object p6, v6

    move-object p7, v2

    move-object/from16 p8, v7

    .line 57
    invoke-direct/range {p0 .. p8}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(ILjava/lang/Boolean;IILandroidx/compose/ui/text/input/PlatformImeOptions;Ljava/lang/Boolean;Landroidx/compose/ui/text/intl/LocaleList;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Boolean;IILandroidx/compose/ui/text/input/PlatformImeOptions;Ljava/lang/Boolean;Landroidx/compose/ui/text/intl/LocaleList;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(ILjava/lang/Boolean;IILandroidx/compose/ui/text/input/PlatformImeOptions;Ljava/lang/Boolean;Landroidx/compose/ui/text/intl/LocaleList;)V

    return-void
.end method

.method public static final synthetic access$getDefault$cp()Landroidx/compose/foundation/text/KeyboardOptions;
    .locals 1

    .line 56
    sget-object v0, Landroidx/compose/foundation/text/KeyboardOptions;->Default:Landroidx/compose/foundation/text/KeyboardOptions;

    return-object v0
.end method

.method private final getAutoCorrectOrDefault()Z
    .locals 0

    .line 159
    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardOptions;->autoCorrectEnabled:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private final getCapitalizationOrDefault-IUNYP9k()I
    .locals 3

    .line 163
    iget p0, p0, Landroidx/compose/foundation/text/KeyboardOptions;->capitalization:I

    invoke-static {p0}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->box-impl(I)Landroidx/compose/ui/text/input/KeyboardCapitalization;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->unbox-impl()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Companion:Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;->getUnspecified-IUNYP9k()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->unbox-impl()I

    move-result p0

    goto :goto_1

    .line 164
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;->getNone-IUNYP9k()I

    move-result p0

    :goto_1
    return p0
.end method

.method private final getHintLocalesOrDefault()Landroidx/compose/ui/text/intl/LocaleList;
    .locals 0

    .line 176
    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardOptions;->hintLocales:Landroidx/compose/ui/text/intl/LocaleList;

    if-nez p0, :cond_0

    sget-object p0, Landroidx/compose/ui/text/intl/LocaleList;->Companion:Landroidx/compose/ui/text/intl/LocaleList$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/intl/LocaleList$Companion;->getEmpty()Landroidx/compose/ui/text/intl/LocaleList;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private final getKeyboardTypeOrDefault-PjHm6EE()I
    .locals 3

    .line 167
    iget p0, p0, Landroidx/compose/foundation/text/KeyboardOptions;->keyboardType:I

    invoke-static {p0}, Landroidx/compose/ui/text/input/KeyboardType;->box-impl(I)Landroidx/compose/ui/text/input/KeyboardType;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/KeyboardType;->unbox-impl()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getUnspecified-PjHm6EE()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/KeyboardType;->unbox-impl()I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getText-PjHm6EE()I

    move-result p0

    :goto_1
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 314
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/text/KeyboardOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 316
    :cond_1
    iget v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->capitalization:I

    check-cast p1, Landroidx/compose/foundation/text/KeyboardOptions;

    iget v3, p1, Landroidx/compose/foundation/text/KeyboardOptions;->capitalization:I

    invoke-static {v1, v3}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 317
    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->autoCorrectEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Landroidx/compose/foundation/text/KeyboardOptions;->autoCorrectEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 318
    :cond_3
    iget v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->keyboardType:I

    iget v3, p1, Landroidx/compose/foundation/text/KeyboardOptions;->keyboardType:I

    invoke-static {v1, v3}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 319
    :cond_4
    iget v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->imeAction:I

    iget v3, p1, Landroidx/compose/foundation/text/KeyboardOptions;->imeAction:I

    invoke-static {v1, v3}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 320
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 321
    :cond_6
    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->showKeyboardOnFocus:Ljava/lang/Boolean;

    iget-object v3, p1, Landroidx/compose/foundation/text/KeyboardOptions;->showKeyboardOnFocus:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 322
    :cond_7
    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardOptions;->hintLocales:Landroidx/compose/ui/text/intl/LocaleList;

    iget-object p1, p1, Landroidx/compose/foundation/text/KeyboardOptions;->hintLocales:Landroidx/compose/ui/text/intl/LocaleList;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getImeActionOrDefault-eUduSuo$foundation_release()I
    .locals 3

    .line 170
    iget p0, p0, Landroidx/compose/foundation/text/KeyboardOptions;->imeAction:I

    invoke-static {p0}, Landroidx/compose/ui/text/input/ImeAction;->box-impl(I)Landroidx/compose/ui/text/input/ImeAction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/ImeAction;->unbox-impl()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getUnspecified-eUduSuo()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/ImeAction;->unbox-impl()I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDefault-eUduSuo()I

    move-result p0

    :goto_1
    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 328
    iget v0, p0, Landroidx/compose/foundation/text/KeyboardOptions;->capitalization:I

    invoke-static {v0}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->hashCode-impl(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 329
    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->autoCorrectEnabled:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 330
    iget v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->keyboardType:I

    invoke-static {v1}, Landroidx/compose/ui/text/input/KeyboardType;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 331
    iget v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->imeAction:I

    invoke-static {v1}, Landroidx/compose/ui/text/input/ImeAction;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    .line 333
    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->showKeyboardOnFocus:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 334
    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardOptions;->hintLocales:Landroidx/compose/ui/text/intl/LocaleList;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final toImeOptions$foundation_release(Z)Landroidx/compose/ui/text/input/ImeOptions;
    .locals 10

    .line 195
    new-instance v9, Landroidx/compose/ui/text/input/ImeOptions;

    .line 197
    invoke-direct {p0}, Landroidx/compose/foundation/text/KeyboardOptions;->getCapitalizationOrDefault-IUNYP9k()I

    move-result v2

    .line 198
    invoke-direct {p0}, Landroidx/compose/foundation/text/KeyboardOptions;->getAutoCorrectOrDefault()Z

    move-result v3

    .line 199
    invoke-direct {p0}, Landroidx/compose/foundation/text/KeyboardOptions;->getKeyboardTypeOrDefault-PjHm6EE()I

    move-result v4

    .line 200
    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardOptions;->getImeActionOrDefault-eUduSuo$foundation_release()I

    move-result v5

    .line 202
    invoke-direct {p0}, Landroidx/compose/foundation/text/KeyboardOptions;->getHintLocalesOrDefault()Landroidx/compose/ui/text/intl/LocaleList;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move v1, p1

    .line 195
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/text/input/ImeOptions;-><init>(ZIZIILandroidx/compose/ui/text/input/PlatformImeOptions;Landroidx/compose/ui/text/intl/LocaleList;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyboardOptions(capitalization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    iget v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->capitalization:I

    .line 339
    invoke-static {v1}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    const-string v1, ", autoCorrectEnabled="

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->autoCorrectEnabled:Ljava/lang/Boolean;

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 341
    const-string v1, ", keyboardType="

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    iget v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->keyboardType:I

    .line 339
    invoke-static {v1}, Landroidx/compose/ui/text/input/KeyboardType;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 342
    const-string v1, ", imeAction="

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->imeAction:I

    .line 339
    invoke-static {v1}, Landroidx/compose/ui/text/input/ImeAction;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 343
    const-string v1, ", platformImeOptions="

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 345
    const-string v1, "showKeyboardOnFocus="

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->showKeyboardOnFocus:Ljava/lang/Boolean;

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 345
    const-string v1, ", hintLocales="

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardOptions;->hintLocales:Landroidx/compose/ui/text/intl/LocaleList;

    .line 339
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
