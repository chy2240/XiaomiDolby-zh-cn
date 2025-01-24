.class public abstract Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;
.super Ljava/lang/Object;
.source "LegacyPlatformTextInputServiceAdapter.kt"

# interfaces
.implements Landroidx/compose/ui/text/input/PlatformTextInputService;


# instance fields
.field private textInputModifierNode:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getTextInputModifierNode()Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;->textInputModifierNode:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;

    return-object p0
.end method

.method public final hideSoftwareKeyboard()V
    .locals 0

    .line 69
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;->textInputModifierNode:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;->getSoftwareKeyboardController()Landroidx/compose/ui/platform/SoftwareKeyboardController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/ui/platform/SoftwareKeyboardController;->hide()V

    :cond_0
    return-void
.end method

.method public final registerModifier(Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;)V
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;->textInputModifierNode:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 52
    const-string v0, "Expected textInputModifierNode to be null"

    .line 52
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 54
    :cond_1
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;->textInputModifierNode:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;

    return-void
.end method

.method public final showSoftwareKeyboard()V
    .locals 0

    .line 65
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;->textInputModifierNode:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;->getSoftwareKeyboardController()Landroidx/compose/ui/platform/SoftwareKeyboardController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/ui/platform/SoftwareKeyboardController;->show()V

    :cond_0
    return-void
.end method

.method public abstract startStylusHandwriting()V
.end method

.method public final unregisterModifier(Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;)V
    .locals 2

    .line 58
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;->textInputModifierNode:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected textInputModifierNode to be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;->textInputModifierNode:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {p1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;->textInputModifierNode:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;

    return-void
.end method
