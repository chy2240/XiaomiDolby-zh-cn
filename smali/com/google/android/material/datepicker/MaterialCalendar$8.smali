.class Lcom/google/android/material/datepicker/MaterialCalendar$8;
.super Ljava/lang/Object;
.source "MaterialCalendar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$8;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 465
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$8;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendar;->toggleVisibleSelector()V

    return-void
.end method
