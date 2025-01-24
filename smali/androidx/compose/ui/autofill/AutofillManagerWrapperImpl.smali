.class final Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;
.super Ljava/lang/Object;
.source "AndroidSemanticAutofill.android.kt"

# interfaces
.implements Landroidx/compose/ui/autofill/AutofillManagerWrapper;


# instance fields
.field private final autofillManager:Landroid/view/autofill/AutofillManager;

.field private final view:Landroidx/compose/ui/platform/AndroidComposeView;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 1

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput-object p1, p0, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 498
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/autofill/AutofillManager;

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;->autofillManager:Landroid/view/autofill/AutofillManager;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 499
    const-string p1, "Autofill service could not be located."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAutofillManager()Landroid/view/autofill/AutofillManager;
    .locals 0

    .line 497
    iget-object p0, p0, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;->autofillManager:Landroid/view/autofill/AutofillManager;

    return-object p0
.end method

.method public notifyViewEntered(ILandroid/graphics/Rect;)V
    .locals 1

    .line 502
    invoke-virtual {p0}, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V

    return-void
.end method

.method public notifyViewExited(I)V
    .locals 1

    .line 506
    invoke-virtual {p0}, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0, p0, p1}, Landroid/view/autofill/AutofillManager;->notifyViewExited(Landroid/view/View;I)V

    return-void
.end method

.method public notifyViewVisibilityChanged(IZ)V
    .locals 2

    .line 515
    sget-object v0, Landroidx/compose/ui/autofill/AutofillApi27Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi27Helper;

    .line 516
    iget-object v1, p0, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 517
    invoke-virtual {p0}, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object p0

    .line 515
    invoke-virtual {v0, v1, p0, p1, p2}, Landroidx/compose/ui/autofill/AutofillApi27Helper;->notifyViewVisibilityChanged(Landroid/view/View;Landroid/view/autofill/AutofillManager;IZ)V

    return-void
.end method
