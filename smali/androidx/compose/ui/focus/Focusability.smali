.class public abstract Landroidx/compose/ui/focus/Focusability;
.super Ljava/lang/Object;
.source "Focusability.kt"


# static fields
.field private static final Always:I

.field public static final Companion:Landroidx/compose/ui/focus/Focusability$Companion;

.field private static final Never:I

.field private static final SystemDefined:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/focus/Focusability$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/focus/Focusability$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/focus/Focusability;->Companion:Landroidx/compose/ui/focus/Focusability$Companion;

    const/4 v0, 0x1

    .line 39
    invoke-static {v0}, Landroidx/compose/ui/focus/Focusability;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/focus/Focusability;->Always:I

    const/4 v0, 0x0

    .line 46
    invoke-static {v0}, Landroidx/compose/ui/focus/Focusability;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/focus/Focusability;->SystemDefined:I

    const/4 v0, 0x2

    .line 52
    invoke-static {v0}, Landroidx/compose/ui/focus/Focusability;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/focus/Focusability;->Never:I

    return-void
.end method

.method public static final synthetic access$getAlways$cp()I
    .locals 1

    .line 32
    sget v0, Landroidx/compose/ui/focus/Focusability;->Always:I

    return v0
.end method

.method public static final synthetic access$getNever$cp()I
    .locals 1

    .line 32
    sget v0, Landroidx/compose/ui/focus/Focusability;->Never:I

    return v0
.end method

.method public static final synthetic access$getSystemDefined$cp()I
    .locals 1

    .line 32
    sget v0, Landroidx/compose/ui/focus/Focusability;->SystemDefined:I

    return v0
.end method

.method public static final canFocus-impl$ui_release(ILandroidx/compose/ui/node/CompositionLocalConsumerModifierNode;)Z
    .locals 2

    .line 66
    sget v0, Landroidx/compose/ui/focus/Focusability;->Always:I

    invoke-static {p0, v0}, Landroidx/compose/ui/focus/Focusability;->equals-impl0(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    sget v0, Landroidx/compose/ui/focus/Focusability;->SystemDefined:I

    invoke-static {p0, v0}, Landroidx/compose/ui/focus/Focusability;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalInputModeManager()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/input/InputModeManager;

    invoke-interface {p0}, Landroidx/compose/ui/input/InputModeManager;->getInputMode-aOaMEAU()I

    move-result p0

    sget-object p1, Landroidx/compose/ui/input/InputMode;->Companion:Landroidx/compose/ui/input/InputMode$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/InputMode$Companion;->getTouch-aOaMEAU()I

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/ui/input/InputMode;->equals-impl0(II)Z

    move-result p0

    xor-int/2addr v1, p0

    goto :goto_0

    .line 69
    :cond_1
    sget p1, Landroidx/compose/ui/focus/Focusability;->Never:I

    invoke-static {p0, p1}, Landroidx/compose/ui/focus/Focusability;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 70
    const-string p1, "Unknown Focusability"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static constructor-impl(I)I
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
