Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 168201E57B4
	for <lists+linux-riscv@lfdr.de>; Thu, 28 May 2020 08:41:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PxFPfi7yVRboC8Xk/rNGKghJD7hDxFD+xwshE+PjzTI=; b=VxDqfq1l0N3wWC
	R0Q/jURbQCO7yE8J3+5+tuUwyB5CRKU9cxK2+NeJNthVPZc1BOqwB+iWIYuH3+Gqa2Iwbq236ttrT
	IIKVE0fAG5nrON/fPLZIdME/cmo5Jg/eCD8dYtqt76i5wnWjXO/7MqDm4T+IIYJ1UeDASRv08rjkv
	SWT/1JzWRx1dsQYB04ZZR10UrESSlqqkK6RikQQZ3riSwqd3Rvd9o4jAFrRwVQzHAsaZdmH7zLdBn
	Sz1pW50BT5ui0kaFD29MZIp/GaAVTEFJ5Gjt9ETJ8UsFg+ZuEqBrfSfqv/wzfieqZJore/fgtAGdI
	j2hfuaT+/Ptc/IpCxUtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeCEB-00031c-Ll; Thu, 28 May 2020 06:41:19 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeCE5-0002vc-Ua
 for linux-riscv@lists.infradead.org; Thu, 28 May 2020 06:41:15 +0000
Received: by mail-pf1-x444.google.com with SMTP id v2so7912366pfv.7
 for <linux-riscv@lists.infradead.org>; Wed, 27 May 2020 23:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PxFPfi7yVRboC8Xk/rNGKghJD7hDxFD+xwshE+PjzTI=;
 b=f1wSpJy/h2YUOcYWweQ/5X7Ou0bveOnO17Q3bv+RfqWbcLVhuosNfiYkXyuWn4kCUh
 EFbRsaCd2Yd6UiPlY2gewRV8InaM/ZosRiefglxbygWm60zJW03L8sTYQrKoo4ZPivqT
 6R/QDNspd9OLCpij2aDfBgktPHtwYgGuOzeWyGmxxnj3ZRi91EwVgMzAz6CXaDHj1aPT
 K04jf1kKyMLF/IEx7ZmNBEXHMCMrWMxutkBhJKNXmqBXecLxKZEg7SvDgWpFDX4ld4ji
 bETxb8MIJSKwTle4Jg7p157eqUF2AmxC4q+JY1sBX3laaT/xuLK7x4om+96aBTWw2UU+
 BeCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PxFPfi7yVRboC8Xk/rNGKghJD7hDxFD+xwshE+PjzTI=;
 b=AuzPtutKf123XzEN1gqzZyw3iSg8pT7KXg/Q5ffxI21zoMPvAb3c+jGdbdpJkxZHng
 IMjHdfsO01PMBAfqH0DYPmYRtFWVxlpH7E5sU6M+Pbppz+zqj1a1a7Al+aTdAdu1Lqqz
 s6uDduHoexOSzmQ0Hmcc2DIqrCbjGorJIBA7PlM1+tCuqsbyJNDYb8pl3Ouj5L8SUZb+
 h14bNBblfj6M5Jfagtagqyit1ppwnV3H7Xg7MoJWZB3xXgr++6DJNA+FeMMx8CU/625I
 d6SFf+LhV7m/8Lq3KHTAAjzXQXKGTJ5sSSInUm4MWKSz4G1MOJyiFknari5FgXyb6C19
 cgVQ==
X-Gm-Message-State: AOAM533qJosXkrny6S96d808Z2cEwPNXDWkgk3wg3U7g9GqTn504Qaeu
 l4+DeHWopMGl652iFNte70Ryiw==
X-Google-Smtp-Source: ABdhPJyzX13f5/QnB6M+TjYVmvxYFhQiZ+I+UK+08JJLyHFvv82ppMdeWwzu3tFliPawqU1SBMxRFA==
X-Received: by 2002:a62:30c7:: with SMTP id w190mr1563681pfw.302.1590648073195; 
 Wed, 27 May 2020 23:41:13 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id q29sm3773366pfg.79.2020.05.27.23.41.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 23:41:12 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, guoren@linux.alibaba.com, vincent.chen@sifive.com,
 paul.walmsley@sifive.com, palmerdabbelt@google.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 oleg@redhat.com
Subject: [RFC PATCH v5 03/13] riscv: Rename __switch_to_aux -> fpu
Date: Thu, 28 May 2020 14:40:51 +0800
Message-Id: <690bd2391cf1a44e23d1e6e4df58c1083a71c7af.1590646208.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590646208.git.greentime.hu@sifive.com>
References: <cover.1590646208.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_234113_992465_EB4AAE8A 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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


