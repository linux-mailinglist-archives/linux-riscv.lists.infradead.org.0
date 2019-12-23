Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FBF129340
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Dec 2019 09:46:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yiv0iJZzGCkc28ztTp8qOF1V1VWNsfhmC5dV3q1Te6c=; b=jl51D9FvX55Vci
	RdS/CYRBYYhQFZ/WvoP2hwj4EoP5tKVEsKJfYwjiW3l8VMKEntR+MF9aU2UEKQohXfokGmsfJ+tEo
	ijjPvdOouHIXrB/OkDAlbH98jsO16xP2rTreMjTirv79ciOe8w/qotgJYZ1oYWAxN10/BuXyjr5Cs
	+PQUdn+1uUdcyBIbTg40wuz5fLj+ER/9wdTW6FEvUbyfJifkV6gZbb0+Z9IlcaBwxexQkzFjZksHi
	t8epvdvB05NIwiI8TNkny2/UBlyi3+ls2amX7MZgNZ20HWUR7MXVFOaP8IPIYpq+MmOGoWJvAJa22
	Y9KyNhS97zQmsreARmYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijJMO-00010R-5t; Mon, 23 Dec 2019 08:46:40 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijJMK-0000zi-U8
 for linux-riscv@lists.infradead.org; Mon, 23 Dec 2019 08:46:38 +0000
Received: by mail-pg1-x542.google.com with SMTP id a33so8468101pgm.5
 for <linux-riscv@lists.infradead.org>; Mon, 23 Dec 2019 00:46:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yiv0iJZzGCkc28ztTp8qOF1V1VWNsfhmC5dV3q1Te6c=;
 b=Ze9JlQ/RyzgyMQOPYRGDFwiIEUBmtJcvRBWoEFPZyXwyP7w7fAHadXoJcLjkm8bhUH
 IIk2X8PQ7fl6hpIc8t9Ji2KXMLQSL6bk0hf5Y2h4L+rC+6rlV2RCUelriUAnLoeag8ic
 XXiEg5dUjLdXq0p6Ro0qqig87W8ig71VBwvTJw0wbGjuAcpsuKTvN4wfUIq0C8Z+2tlS
 UQYPyZNA8b+zw6b7QEl7wrOrtJ7WGXgYG1j/sfzOCJ74dw/5w/Lxwul2Qqbu2zz5pAbY
 vRalr8LpOy43j67GCFlH6/fjn/ok/YZnurf+kQONegSAUDvJK6ZvMootjqB6zO53q0ZU
 87TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yiv0iJZzGCkc28ztTp8qOF1V1VWNsfhmC5dV3q1Te6c=;
 b=BEV9M68sJgqWshOpvvqN4888dNWZLmN0gL4pCw2o0aduzx4er5ysECIXEIz4WLX3i7
 Ppni89/adzGUWaRkKXhLWW5gR31gzV3aImhncc081lqTXTYxAaUCbXkGBV+oWyRWxTqE
 J/LnGJ/GilsVTqEtcmK7wlxZ+AqrwR9ivI+QPxcPbmBRukONJDcpkaUB8WG9/hwfJUWX
 PdvQamae/31l+bHx4Puq0CzswAaS3ty7bd8Q2Ptg9AfTdS30Bdc9RpQ/Y7y3Jp1z4Gjf
 ods/MbVcLYz3OPx2WgA2CWX62P3GTZXCANSsW/gfipWuuHIDmpphB1xCll//cTM/lLed
 cz7g==
X-Gm-Message-State: APjAAAVcv4KzPpWpLq2MmQ8nj4Z0C1X7Mj1ZgEFu2Y1XFjBOPgrqx0IQ
 28eEz5xuES9Pp0DNVjUb+/cl0g==
X-Google-Smtp-Source: APXvYqwtYQRnD1PE+F0K9hRtH2R1S/5XtTDwUPlezFEYsg0OKGW/HTWm3vfnSZtJ+uraXjbJB/FKPw==
X-Received: by 2002:a63:6507:: with SMTP id z7mr30920986pgb.322.1577090795638; 
 Mon, 23 Dec 2019 00:46:35 -0800 (PST)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id m71sm22000516pje.0.2019.12.23.00.46.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Dec 2019 00:46:35 -0800 (PST)
From: Zong Li <zong.li@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, rostedt@goodmis.org,
 anup@brainfault.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
Subject: [PATCH 0/2] RISC-V: fixes issues of ftrace graph tracer
Date: Mon, 23 Dec 2019 16:46:12 +0800
Message-Id: <20191223084614.67126-1-zong.li@sifive.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_004637_162034_5BB9A965 
X-CRM114-Status: UNSURE (   5.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

Ftrace graph tracer is broken now, these patches fix the problem of ftrace graph
tracer and tested on QEMU and HiFive Unleashed board.

Zong Li (2):
  riscv: ftrace: correct the condition logic in function graph tracer
  clocksource/drivers/riscv: add notrace to riscv_sched_clock

 arch/riscv/kernel/ftrace.c        | 2 +-
 drivers/clocksource/timer-riscv.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.24.1


