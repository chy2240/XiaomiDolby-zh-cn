.class public final Landroidx/compose/ui/autofill/AndroidAutofill;
.super Ljava/lang/Object;
.source "AndroidAutofill.android.kt"

# interfaces
.implements Landroidx/compose/ui/autofill/Autofill;


# instance fields
.field private final autofillManager:Landroid/view/autofill/AutofillManager;

.field private final autofillTree:Landroidx/compose/ui/autofill/AutofillTree;

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroidx/compose/ui/autofill/AutofillTree;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->view:Landroid/view/View;

    iput-object p2, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->autofillTree:Landroidx/compose/ui/autofill/AutofillTree;

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/autofill/AutofillManager;

    if-eqz p2, :cond_0

    iput-object p2, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->autofillManager:Landroid/view/autofill/AutofillManager;

    const/4 p0, 0x1

    .line 44
    invoke-virtual {p1, p0}, Landroid/view/View;->setImportantForAutofill(I)V

    return-void

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    const-string p1, "Autofill service could not be located."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getAutofillManager()Landroid/view/autofill/AutofillManager;
    .locals 0

    .line 39
    iget-object p0, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->autofillManager:Landroid/view/autofill/AutofillManager;

    return-object p0
.end method

.method public final getAutofillTree()Landroidx/compose/ui/autofill/AutofillTree;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->autofillTree:Landroidx/compose/ui/autofill/AutofillTree;

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->view:Landroid/view/View;

    return-object p0
.end method
