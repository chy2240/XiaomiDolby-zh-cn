.class public abstract Landroidx/compose/ui/autofill/AutofillUtils_androidKt;
.super Ljava/lang/Object;
.source "AutofillUtils.android.kt"


# direct methods
.method public static final toLegacyClassName-V4PA4sw(I)Ljava/lang/String;
    .locals 2

    .line 203
    sget-object v0, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role$Companion;->getButton-o7Vup1c()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "android.widget.Button"

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role$Companion;->getCheckbox-o7Vup1c()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "android.widget.CheckBox"

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role$Companion;->getRadioButton-o7Vup1c()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "android.widget.RadioButton"

    goto :goto_0

    .line 206
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role$Companion;->getImage-o7Vup1c()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "android.widget.ImageView"

    goto :goto_0

    .line 207
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role$Companion;->getDropdownList-o7Vup1c()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p0, "android.widget.Spinner"

    goto :goto_0

    .line 208
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role$Companion;->getValuePicker-o7Vup1c()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "android.widget.NumberPicker"

    goto :goto_0

    .line 209
    :cond_5
    const-string p0, "android.view.View"

    :goto_0
    return-object p0
.end method
