Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 733F61F7465
	for <lists+linux-riscv@lfdr.de>; Fri, 12 Jun 2020 09:10:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zQ9MqfWdvKY0A/nub4Fo1FL/E8bJu3O4TVW1RUvcWdg=; b=ioHXnU7zY7laSF
	J21kWWZxI487U/shxRKk6VNxI8eQepVapumraDTqXDmc3jE0tDXiAZrFu3XW6erNRnZsabcODFR/S
	Cd5fVWTYG5L/pInF52D7SQO56JnAN5CNaUksLT/U81zkF62fmL/kd4hMHf3dsDywEHy3aIn4ZgQzw
	ITcLcTxS7fSufCietFo5H9Ju1qnbPmtYGLy/nantB5WLQY2Th2IzUYonNZifImsHgjWn7+fNkybPS
	bkT068w98XA+o0iSxqwdqfyaTgtWUUN0xH3zTI454x4b0nBuUqX1DIwRW1qCh5h1wbAim2Ld2P+9x
	WObaP/41PLT0ja57RidA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjdpb-00059R-Pp; Fri, 12 Jun 2020 07:10:27 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjdpR-00052E-IK
 for linux-riscv@lists.infradead.org; Fri, 12 Jun 2020 07:10:19 +0000
Received: by mail-pj1-x1041.google.com with SMTP id k2so3292196pjs.2
 for <linux-riscv@lists.infradead.org>; Fri, 12 Jun 2020 00:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zQ9MqfWdvKY0A/nub4Fo1FL/E8bJu3O4TVW1RUvcWdg=;
 b=lj5U69Cksq6OCRUwr5FSFcfeGktJxkA9FTX+22+Wu+8dwxBHR77hXuHnIPRGOGie44
 ERN9/bY0xBVAOg9TX0F1fwANzNIdEZDZ8O4zqyQKeVct1npSg+vhxUXazCaPOanobztU
 9IPlSXq8y3X0DOryWc0JvgfCJkQrIvmRxtFpBJoIO0umdmsg88SzIQzbrWuSS5IaaqiC
 7jVNrkCGrcOhX9nUMKOmAks8AXBrZNwWlqrDsZmzAFXqqRLSuMEsdwLqtJCyTc7uVnbg
 trwbYhhJV97v47brW5F6K0w52j/zZa2BihQAIGVXfIz7oMjc6oE8qumbzxHB5NHRp0JI
 AMPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zQ9MqfWdvKY0A/nub4Fo1FL/E8bJu3O4TVW1RUvcWdg=;
 b=NPbrK0eYJKsb2ZazZ1CXDO6ojNuleAbUVhJCET6hQgIg/CcV5fCHBSbgltx4Pv7QpR
 IwLC199sY1xEDdf6uQXlzblOjnrGQIqf24/fNvQjKmAig1p8Q9Q/mXahYdEUVok+opjj
 iyag0+60jUC9xJp4ZpRdzKp+QRxMwH/Xl+SLbCZ5E15Yd9J3yygUO7I3BHTnzGIfiZun
 iAw2BsEqOrGnZoUjiyHGYMCk9zIsCUo+38l7iZ+z5tME9Z4OfDHgUEoii+4JBMi/JnGv
 ZawI2FfWhqJxdzi1K6eA4SUbEsQeHzGqywb0Sz3Q9Yo75CA/3OlEI7J/NazHft/VgHgX
 EOIQ==
X-Gm-Message-State: AOAM531fScSIqvWV1Rc6xKr1q8IzymYVZvS4obdSeNwXtgrGoASSygF5
 kGFUfHnzXLFTdwGvHCEyZca/ig==
X-Google-Smtp-Source: ABdhPJwXTT29gm2ifat7CTG4weeyGOi00tGqBa0Ywljl2zNKwiR1hC9l0czmEkulm7P+V+zLBD+x/w==
X-Received: by 2002:a17:90a:3b09:: with SMTP id
 d9mr12421250pjc.225.1591945817016; 
 Fri, 12 Jun 2020 00:10:17 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id d2sm4336919pgp.56.2020.06.12.00.10.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 00:10:16 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, oleg@redhat.com, guoren@linux.alibaba.com,
 vincent.chen@sifive.com, paul.walmsley@sifive.com,
 palmerdabbelt@google.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 03/13] riscv: Rename __switch_to_aux -> fpu
Date: Fri, 12 Jun 2020 15:09:52 +0800
Message-Id: <28ce87a2bf6b73b01faa33b35df440effaab9a8b.1591344965.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1591344965.git.greentime.hu@sifive.com>
References: <cover.1591344965.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_001017_621356_53D39A07 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
2.27.0


