Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FDE91E1BBA
	for <lists+linux-riscv@lfdr.de>; Tue, 26 May 2020 09:03:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PxFPfi7yVRboC8Xk/rNGKghJD7hDxFD+xwshE+PjzTI=; b=qKoQZf/zi9t441
	WAQPrD2KRqJlAVd465mun0Wh9YSyOwxvrqnklxtsI8wcsXIEhwn44uJmYsMaeZ5AxypKYXs0kfvwf
	eutllBtpLzuLhZxFV4Ovq1PG0Tvp5gEKUh82OYEZQhotdp584fysqt1Vahgv5u7mnXgCbcPeeTTbH
	qOeYsoMK8CF/yG3OqlMndtRK4oq3E/e75yRhyhYpSBkxFnBPDhLN5QUgaBDT0CzcJk6gDOHWV5C1k
	I1hHi+mI9nfKVsAldDstX5N47gRdWbY/DL8jtAWaVMOYT8dsho78Hqz6GOnOePQ2vncYa73Jh30oe
	bq8W+cQbnWmdD/HGIeDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdTcH-0007ZE-5P; Tue, 26 May 2020 07:03:13 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdTc0-0007JR-TA
 for linux-riscv@lists.infradead.org; Tue, 26 May 2020 07:03:02 +0000
Received: by mail-pf1-x443.google.com with SMTP id y18so9695214pfl.9
 for <linux-riscv@lists.infradead.org>; Tue, 26 May 2020 00:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PxFPfi7yVRboC8Xk/rNGKghJD7hDxFD+xwshE+PjzTI=;
 b=A8Ba9LiM4FXDBMj3/JoAULUfqoADa0ZJ7s+8l4NrIqTU+KQ3a2+it1Iuet3PTrxIrw
 UI9B9o/y6gawWY0sVVNMAM3kWP/6zmTAW+IoiZaj/BlaaX+NSpsOM/7dsmGJPlBQyyZq
 p4ZyeoTqSv8K005XX52f3ZutijPMkUro18w60KwVEKZ1NOUoDytlpMveWxBqpX1R7xNE
 Rm9HDAUm7uG1VjgESdC1YsOP2VVZ0PrhU+EUUn4MiNn8GkLKYbZgjDtze0YB1FVUniXz
 Rg34XS7vZ7eHXgHwn73i+6UTkMwQGXoHriLC3zNe3abjzAfK13tMGnh6LAWfdWriwPoz
 PxyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PxFPfi7yVRboC8Xk/rNGKghJD7hDxFD+xwshE+PjzTI=;
 b=bCvDItjtIsXSIjq6sZEPezfPmOzIlk1QYDudPXRJSuY3tL3Zlw4h0VDW5zyRee4+sC
 0GZNx3itrIDk8NpfDN5lDfzt0Q2w9tYk7BEon5NNUjBKIL6gs9K/xwwmPe+KCme6oKfi
 NhABXcwKBdhMo45bgjlwjNLzSJG3vbOoFQh53JPmrxRS4r5FvdATgItOOsI0/NmNF9m2
 QsboxV0zj6qlj9DvoRQnW4zmDgdoJyTd3nZBO3W+1jUmswcHrE9KHN723lIPuMr+qIMV
 3PmV/ygz9hHj7fise+SrrIY35pPDms53mlub69ijS0/0zcpX5fHoLof3v4+/x0pn2oG7
 plGQ==
X-Gm-Message-State: AOAM530B6r0tevUZUgWnCZe5gF/Q8Tilved2HFaXVyD4+I3886DjZDeD
 UOpQB2uo1+yPXRQlg2BK2LZFNA==
X-Google-Smtp-Source: ABdhPJxjtjxmQcZuhl0Aa/0AtC4qperp3MlGwBWJTMwMxNvqgsI/B5oMXqtXmEL5m4hT9DUTckKPUQ==
X-Received: by 2002:a63:f64d:: with SMTP id u13mr29609458pgj.151.1590476576166; 
 Tue, 26 May 2020 00:02:56 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id q34sm15167431pja.22.2020.05.26.00.02.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 00:02:55 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, guoren@linux.alibaba.com, vincent.chen@sifive.com,
 paul.walmsley@sifive.com, palmerdabbelt@google.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 oleg@redhat.com
Subject: [RFC PATCH v4 03/13] riscv: Rename __switch_to_aux -> fpu
Date: Tue, 26 May 2020 15:02:32 +0800
Message-Id: <dd4b4959a413b9f9304caf593cea056c121dcefb.1590474856.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590474856.git.greentime.hu@sifive.com>
References: <cover.1590474856.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_000256_941631_22E20C72 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Anup Patel <anup@brainfault.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Guo Ren <guoren@linux.alibaba.com>

From: Guo Ren <ren_guo@c-sky.com>

The name of __switch_to_aux is not clear and rename it with the
determine function: __switch_to_fpu. Next we could add other regs'
switch.

Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/include/asm/switch_to.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/switch_to.h
index 407bcc96a710..b9234e7178d0 100644
--- a/arch/riscv/include/asm/switch_to.h
+++ b/arch/riscv/include/asm/switch_to.h
@@ -44,7 +44,7 @@ static inline void fstate_restore(struct task_struct *task,
 	}
 }
 
-static inline void __switch_to_aux(struct task_struct *prev,
+static inline void __switch_to_fpu(struct task_struct *prev,
 				   struct task_struct *next)
 {
 	struct pt_regs *regs;
@@ -60,7 +60,7 @@ extern bool has_fpu;
 #define has_fpu false
 #define fstate_save(task, regs) do { } while (0)
 #define fstate_restore(task, regs) do { } while (0)
-#define __switch_to_aux(__prev, __next) do { } while (0)
+#define __switch_to_fpu(__prev, __next) do { } while (0)
 #endif
 
 extern struct task_struct *__switch_to(struct task_struct *,
@@ -71,7 +71,7 @@ do {							\
 	struct task_struct *__prev = (prev);		\
 	struct task_struct *__next = (next);		\
 	if (has_fpu)					\
-		__switch_to_aux(__prev, __next);	\
+		__switch_to_fpu(__prev, __next);	\
 	((last) = __switch_to(__prev, __next));		\
 } while (0)
 
-- 
2.26.2


