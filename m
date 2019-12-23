Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6255B129342
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Dec 2019 09:46:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ff1G2isf3ENPBF2E46NZvxlde1YZeJauMKR6NxdElmA=; b=sezRSsD9bXtRWN
	dbcm1oA6c3B172KLa7RGyyKBPkFmTFq3uHgfNMr3FmrXm0QHy0AYC2BV0qQS3vExpw0H1ZBL+gjV2
	QkSc+TppqMSe8k034DYZKES71OwN0+mEEUCdP6Rh11PR0/SykPJr+kfq1I4HKmd7VB0+m/A7WEmzn
	16QggWspj8Y4x9QFDC/v++PhnRNVGxXV94C4aQqQgLPW/vAE07CXDVilt8v9VRzsRoUv+yPIsTtYY
	MCJ0X2JUJOLcS4wq0MOwZteOD47ECFLBcrnQ/KcpfJRlx2ouhHgD6P0dtok8HP5wr+wmUyN7+R+HG
	zQMQUrWdxdWCxPzwfxkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijJMX-00017d-3H; Mon, 23 Dec 2019 08:46:49 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijJMT-00015Z-MA
 for linux-riscv@lists.infradead.org; Mon, 23 Dec 2019 08:46:47 +0000
Received: by mail-pg1-x543.google.com with SMTP id k3so8473627pgc.3
 for <linux-riscv@lists.infradead.org>; Mon, 23 Dec 2019 00:46:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ff1G2isf3ENPBF2E46NZvxlde1YZeJauMKR6NxdElmA=;
 b=VibfO/Jbrl3zvORkS4IIjAcQRdVJEcsvyxUWPE9Wg6Or5bYbgt7kUvv+ERe/v0D8cK
 nCyXtShCcbVas+YSSIG5WREjXocauJsfW+gSN13hCSEapPMvBaBOR+t4HqmrCc9vfdC2
 +vYZYvr+AlU9nrV1dedvsFlSoq9mZVxwrjJBabYQJ5jgKmm4NDHgmSMdwtlryMvQxt4l
 Q/yDrCJD8wGcvm9NBzft+H9djtvGTP1NWtTad6QuTqpnWDjD/7ybs/fICaVaMYMigIwl
 24k3LbSz6g3jro7qyeXwKR6slev/8IhOb3nob8jRDncsu+jIJTCvS4hRIko3APXbncEJ
 Mf8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ff1G2isf3ENPBF2E46NZvxlde1YZeJauMKR6NxdElmA=;
 b=cvsdSQI2DLayhEIMn03RMTPBvqKKIL1KyKFMHJqPU2JS2DGhzKlZeZT4RGbyvJ1XUk
 qR3rmM5KxclFFx5MrdEhWFSfnf8vVjO0TQePnCOhCQvAEnMjsgOzbcZPMLq9kCH23MuC
 /lUSLImJ6kD8nhkMFTv8DwfVySXydYBqqoDeFrczaBFhCfzdRlImolR4PkIMXkHOOhay
 DMPhXxRqCpBMUqHTMG6Pq19BFI7UDqhUfXAOM6LGeN8Z10WoQvgDLp9cf0nmHZBCHrGP
 FuRQAy9HX3bg0pS7KFF9MfjBadgkePAbZ6s2Rl9w+wepZir5Qim2877f+ey36c0g0SUz
 ZhRw==
X-Gm-Message-State: APjAAAWkAKhpo5wmpcyV0FGAsiiyFWzoCKJJQPO4asYmhiRIDi3GXr1S
 B+BZk+QuGgqufaIqmNLV53EHAw==
X-Google-Smtp-Source: APXvYqziyy9+w5umsVZLAP3PlpDcZfc5datLpMELsbD8i83kTAgMKYnXrd9Dl1fqOgSr7xzPGzo+Cw==
X-Received: by 2002:a63:62c2:: with SMTP id
 w185mr24538363pgb.271.1577090804127; 
 Mon, 23 Dec 2019 00:46:44 -0800 (PST)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id m71sm22000516pje.0.2019.12.23.00.46.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Dec 2019 00:46:43 -0800 (PST)
From: Zong Li <zong.li@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, rostedt@goodmis.org,
 anup@brainfault.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
Subject: [PATCH 2/2] clocksource/drivers/riscv: add notrace to
 riscv_sched_clock
Date: Mon, 23 Dec 2019 16:46:14 +0800
Message-Id: <20191223084614.67126-3-zong.li@sifive.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191223084614.67126-1-zong.li@sifive.com>
References: <20191223084614.67126-1-zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_004645_726103_8F669BCB 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

When enabling ftrace graph tracer, it gets the tracing clock in
ftrace_push_return_trace. Eventually, it invokes the riscv_sched_clock to
get the clock. If add mcount instrument in riscv_sched_clock, it will
call ftrace_push_return_trace and cause infinite loop.

The result of failure as follow:

command: echo function_graph >current_tracer
[   46.176787] Unable to handle kernel paging request at virtual address ffffffe04fb38c48
[   46.177309] Oops [#1]
[   46.177478] Modules linked in:
[   46.177770] CPU: 0 PID: 256 Comm: $d Not tainted 5.5.0-rc1 #47
[   46.177981] epc: ffffffe00035e59a ra : ffffffe00035e57e sp : ffffffe03a7569b0
[   46.178216]  gp : ffffffe000d29b90 tp : ffffffe03a756180 t0 : ffffffe03a756968
[   46.178430]  t1 : ffffffe00087f408 t2 : ffffffe03a7569a0 s0 : ffffffe03a7569f0
[   46.178643]  s1 : ffffffe00087f408 a0 : 0000000ac054cda4 a1 : 000000000087f411
[   46.178856]  a2 : 0000000ac054cda4 a3 : 0000000000373ca0 a4 : ffffffe04fb38c48
[   46.179099]  a5 : 00000000153e22a8 a6 : 00000000005522ff a7 : 0000000000000005
[   46.179338]  s2 : ffffffe03a756a90 s3 : ffffffe00032811c s4 : ffffffe03a756a58
[   46.179570]  s5 : ffffffe000d29fe0 s6 : 0000000000000001 s7 : 0000000000000003
[   46.179809]  s8 : 0000000000000003 s9 : 0000000000000002 s10: 0000000000000004
[   46.180053]  s11: 0000000000000000 t3 : 0000003fc815749c t4 : 00000000000efc90
[   46.180293]  t5 : ffffffe000d29658 t6 : 0000000000040000
[   46.180482] status: 0000000000000100 badaddr: ffffffe04fb38c48 cause: 000000000000000f

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 drivers/clocksource/timer-riscv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
index 4e54856ce2a5..c4f15c4068c0 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -56,7 +56,7 @@ static unsigned long long riscv_clocksource_rdtime(struct clocksource *cs)
 	return get_cycles64();
 }
 
-static u64 riscv_sched_clock(void)
+static u64 notrace riscv_sched_clock(void)
 {
 	return get_cycles64();
 }
-- 
2.24.1


