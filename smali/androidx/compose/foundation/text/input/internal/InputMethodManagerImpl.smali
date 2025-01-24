.class public final Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;
.super Ljava/lang/Object;
.source "InputMethodManager.android.kt"

# interfaces
.implements Landroidx/compose/foundation/text/input/internal/InputMethodManager;


# instance fields
.field private final imm$delegate:Lkotlin/Lazy;

.field private final softwareKeyboardControllerCompat:Landroidx/core/view/SoftwareKeyboardControllerCompat;

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->view:Landroid/view/View;

    .line 58
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl$imm$2;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl$imm$2;-><init>(Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->imm$delegate:Lkotlin/Lazy;

    .line 63
    new-instance v0, Landroidx/core/view/SoftwareKeyboardControllerCompat;

    invoke-direct {v0, p1}, Landroidx/core/view/SoftwareKeyboardControllerCompat;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->softwareKeyboardControllerCompat:Landroidx/core/view/SoftwareKeyboardControllerCompat;

    return-void
.end method

.method public static final synthetic access$getView$p(Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;)Landroid/view/View;
    .locals 0

    .line 55
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->view:Landroid/view/View;

    return-object p0
.end method

.method private final getImm()Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 57
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->imm$delegate:Lkotlin/Lazy;

    .line 58
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .line 65
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public restartInput()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    return-void
.end method

.method public startStylusHandwriting()V
    .locals 2

    .line 102
    sget-object v0, Landroidx/compose/foundation/text/input/internal/Api34StartStylusHandwriting;->INSTANCE:Landroidx/compose/foundation/text/input/internal/Api34StartStylusHandwriting;

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->view:Landroid/view/View;

    invoke-virtual {v0, v1, p0}, Landroidx/compose/foundation/text/input/internal/Api34StartStylusHandwriting;->startStylusHandwriting(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    return-void
.end method

.method public updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->view:Landroid/view/View;

    invoke-virtual {v0, p0, p1}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    return-void
.end method

.method public updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->view:Landroid/view/View;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    return-void
.end method

.method public updateSelection(IIII)V
    .locals 6

    .line 93
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->view:Landroid/view/View;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    return-void
.end method
