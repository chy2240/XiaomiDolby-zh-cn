.class public final Landroidx/compose/ui/autofill/AutofillApi26Helper;
.super Ljava/lang/Object;
.source "AutofillUtils.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/autofill/AutofillApi26Helper;

    invoke-direct {v0}, Landroidx/compose/ui/autofill/AutofillApi26Helper;-><init>()V

    sput-object v0, Landroidx/compose/ui/autofill/AutofillApi26Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addChildCount(Landroid/view/ViewStructure;I)I
    .locals 0

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->addChildCount(I)I

    move-result p0

    return p0
.end method

.method public final getAutofillId(Landroid/view/ViewStructure;)Landroid/view/autofill/AutofillId;
    .locals 0

    .line 90
    invoke-virtual {p1}, Landroid/view/ViewStructure;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object p0

    return-object p0
.end method

.method public final getAutofillTextValue(Ljava/lang/String;)Landroid/view/autofill/AutofillValue;
    .locals 0

    .line 184
    invoke-static {p1}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object p0

    return-object p0
.end method

.method public final isDate(Landroid/view/autofill/AutofillValue;)Z
    .locals 0

    .line 92
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isDate()Z

    move-result p0

    return p0
.end method

.method public final isList(Landroid/view/autofill/AutofillValue;)Z
    .locals 0

    .line 94
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isList()Z

    move-result p0

    return p0
.end method

.method public final isText(Landroid/view/autofill/AutofillValue;)Z
    .locals 0

    .line 96
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result p0

    return p0
.end method

.method public final isToggle(Landroid/view/autofill/AutofillValue;)Z
    .locals 0

    .line 98
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isToggle()Z

    move-result p0

    return p0
.end method

.method public final newChild(Landroid/view/ViewStructure;I)Landroid/view/ViewStructure;
    .locals 0

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object p0

    return-object p0
.end method

.method public final setAutofillId(Landroid/view/ViewStructure;Landroid/view/autofill/AutofillId;I)V
    .locals 0

    .line 110
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method public final setAutofillType(Landroid/view/ViewStructure;I)V
    .locals 0

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setAutofillType(I)V

    return-void
.end method

.method public final setAutofillValue(Landroid/view/ViewStructure;Landroid/view/autofill/AutofillValue;)V
    .locals 0

    .line 117
    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setAutofillValue(Landroid/view/autofill/AutofillValue;)V

    return-void
.end method

.method public final setCheckable(Landroid/view/ViewStructure;Z)V
    .locals 0

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setCheckable(Z)V

    return-void
.end method

.method public final setChecked(Landroid/view/ViewStructure;Z)V
    .locals 0

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setChecked(Z)V

    return-void
.end method

.method public final setClassName(Landroid/view/ViewStructure;Ljava/lang/String;)V
    .locals 0

    .line 133
    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    return-void
.end method

.method public final setClickable(Landroid/view/ViewStructure;Z)V
    .locals 0

    .line 137
    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setClickable(Z)V

    return-void
.end method

.method public final setContentDescription(Landroid/view/ViewStructure;Ljava/lang/CharSequence;)V
    .locals 0

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setDataIsSensitive(Landroid/view/ViewStructure;Z)V
    .locals 0

    .line 141
    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setDataIsSensitive(Z)V

    return-void
.end method

.method public final setDimens(Landroid/view/ViewStructure;IIIIII)V
    .locals 0

    .line 88
    invoke-virtual/range {p1 .. p7}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    return-void
.end method

.method public final setEnabled(Landroid/view/ViewStructure;Z)V
    .locals 0

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setEnabled(Z)V

    return-void
.end method

.method public final setFocusable(Landroid/view/ViewStructure;Z)V
    .locals 0

    .line 148
    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setFocusable(Z)V

    return-void
.end method

.method public final setFocused(Landroid/view/ViewStructure;Z)V
    .locals 0

    .line 151
    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setFocused(Z)V

    return-void
.end method

.method public final setId(Landroid/view/ViewStructure;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewStructure;->setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setInputType(Landroid/view/ViewStructure;I)V
    .locals 0

    .line 154
    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setInputType(I)V

    return-void
.end method

.method public final setLongClickable(Landroid/view/ViewStructure;Z)V
    .locals 0

    .line 158
    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setLongClickable(Z)V

    return-void
.end method

.method public final setSelected(Landroid/view/ViewStructure;Z)V
    .locals 0

    .line 165
    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setSelected(Z)V

    return-void
.end method

.method public final setText(Landroid/view/ViewStructure;Ljava/lang/CharSequence;)V
    .locals 0

    .line 169
    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setVisibility(Landroid/view/ViewStructure;I)V
    .locals 0

    .line 174
    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setVisibility(I)V

    return-void
.end method

.method public final textValue(Landroid/view/autofill/AutofillValue;)Ljava/lang/CharSequence;
    .locals 0

    .line 176
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
