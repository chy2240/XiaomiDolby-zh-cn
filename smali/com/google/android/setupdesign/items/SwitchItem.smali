.class public Lcom/google/android/setupdesign/items/SwitchItem;
.super Lcom/google/android/setupdesign/items/Item;
.source "SwitchItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private checked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/Item;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/SwitchItem;->checked:Z

    .line 62
    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SudSwitchItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 63
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudSwitchItem_android_checked:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/setupdesign/items/SwitchItem;->checked:Z

    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected getDefaultLayoutResource()I
    .locals 0

    .line 85
    sget p0, Lcom/google/android/setupdesign/R$layout;->sud_items_switch:I

    return p0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 119
    iput-boolean p2, p0, Lcom/google/android/setupdesign/items/SwitchItem;->checked:Z

    return-void
.end method
