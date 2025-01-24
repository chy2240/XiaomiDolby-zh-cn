.class final Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$baseInputConnection$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LegacyPlatformTextInputServiceAdapter.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$baseInputConnection$2;->this$0:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/inputmethod/BaseInputConnection;
    .locals 2

    .line 235
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$baseInputConnection$2;->this$0:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->getView()Landroid/view/View;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 235
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$baseInputConnection$2;->invoke()Landroid/view/inputmethod/BaseInputConnection;

    move-result-object p0

    return-object p0
.end method
