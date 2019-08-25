Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B17EC9C3F9
	for <lists+linux-riscv@lfdr.de>; Sun, 25 Aug 2019 15:28:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VzIbXpkDy73PqaIGL23DAfFMo5T8CXUTrc74qfbST0U=; b=mkNRkEbBZr/wl6
	+weuJyr75E4EjOStjZMHNNHQHH/m71u+/wOft248hGKIHoh04iv5Ptm8ggOuWM9FsuxzYB7YOSXrm
	JJPbCLIZlgdU+0pSDxPHxtPP6IVRKOHkeZLeiEXz0GH8SE873J4oKL1x/QEL6ET/jxdCQg84c3bW+
	SucG2MUj3wMbCuEut0remXoCK9tz2tmgkAz27vJVUHjLgbaLmNgyWyoxQkIb5nXzltouc0Y6CzJ0R
	VEefxZz6Q5YFnTt+CLuNWntaR1PxOhnR8fapF5+uu7vs1DDI7w0NOs0JUDCCn7opWJE5M2DWgn+IU
	PF+Mafs/5KfJpycpBG2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1sZX-0008DA-1H; Sun, 25 Aug 2019 13:28:43 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1sWA-0004zU-5X; Sun, 25 Aug 2019 13:25:15 +0000
Received: by mail-pg1-x541.google.com with SMTP id n9so8762732pgc.1;
 Sun, 25 Aug 2019 06:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0QzXKgHJNJjac27m2EIm1Lz0/kAofQ72J+526iejRFQ=;
 b=GO/PVWf3Aip/lj76SnUDb0sMdXD+1tVF4Pr4MtQbEEKh9xmXb2UDDeimXy+D9tSRoG
 ONfI3x+1GnVxlk4972mu5UBRbB3v9cDn0s0GXIfDvUkoxvFpZB7qpM3Wm7svq08IqXES
 3/9H/nvW/APPaP6DXd/ZlsqTaXXFgfY5nbRum3oET7EhpHDQM6O7aQgrLYUCx31vh/tp
 Pj3jnXMeh/9xoFgvF62TEqWkl9dtlG9kZEQ23LqbLsRsqn9qkIxzDaA35xnLfCdk7Yvg
 kdWiDXZHWBnkOUGF5K8KzJ635D2qzEbl/F8Ge9MZplop+b+vPJfi/jVV3tdF7l5wEKUI
 HPiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0QzXKgHJNJjac27m2EIm1Lz0/kAofQ72J+526iejRFQ=;
 b=oeDGeaoPq5NeZhAxhVca4OEjGim/3E6HnbxaGVPAnBPk0zAmO2JD6pdVBTZ8tFvC1p
 LBl5GOPzQf7iRr4FMO4gpG/qBkXtNXzF+pQLSHDHg6E0jjirOeAFICKCZTyJ5VzHpg6Z
 BeU8NhGYFFpsqWZtNbmyyxC8Y68AlbjyQPeYihJc7HDmIGXT7Xs4CCG3SQnLzDE2igKW
 FhyN3rPlPbxJX5o5qBAonll0FfNitIuB0rsJqMFpTWKWnIApN57wYCzkjQgORBVb4Qqb
 lz2fxiUhuad+Tec7HjCZzjiopG2DrTVntxvoHVIdirbte4D9s770CFSCj6rECpqKC0UH
 /S1A==
X-Gm-Message-State: APjAAAVRcOQoNqmJuzRPUHmxYA/eTz1FOJb+7xao0Y5tIxAm79yerJsn
 U5z99xxo3TlKQ+mFG1AKsoEsvUU0SMEOWQ==
X-Google-Smtp-Source: APXvYqxZ3PAtXLqHmn+Zgv1+tnSLgb0uWh1NyJ7+nIhirLt8hpEvkUAsM2RAxT5IIyrqsmvFKAmyHw==
X-Received: by 2002:a17:90a:3465:: with SMTP id
 o92mr14610155pjb.20.1566739513587; 
 Sun, 25 Aug 2019 06:25:13 -0700 (PDT)
Received: from localhost.localdomain ([149.28.153.17])
 by smtp.gmail.com with ESMTPSA id y23sm11076562pfr.86.2019.08.25.06.25.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 25 Aug 2019 06:25:13 -0700 (PDT)
From: Changbin Du <changbin.du@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>,
	Ingo Molnar <mingo@redhat.com>
Subject: [PATCH 11/11] MAINTAINERS: make scripts/ftrace/ maintained
Date: Sun, 25 Aug 2019 21:23:30 +0800
Message-Id: <20190825132330.5015-12-changbin.du@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190825132330.5015-1-changbin.du@gmail.com>
References: <20190825132330.5015-1-changbin.du@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_062514_368561_A5082223 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (changbin.du[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-parisc@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-s390@vger.kernel.org, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 Jessica Yu <jeyu@kernel.org>, sparclinux@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linuxppc-dev@lists.ozlabs.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Changbin Du <changbin.du@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Make scripts/ftrace/ maintained and I would like to help with reviewing
related patches.

Signed-off-by: Changbin Du <changbin.du@gmail.com>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 9cbcf167bdd0..ca012ea260d7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16293,6 +16293,7 @@ F:	drivers/char/tpm/
 TRACING
 M:	Steven Rostedt <rostedt@goodmis.org>
 M:	Ingo Molnar <mingo@redhat.com>
+R:	Changbin Du <changbin.du@gmail.com>
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git perf/core
 S:	Maintained
 F:	Documentation/trace/ftrace.rst
@@ -16303,6 +16304,7 @@ F:	include/linux/trace*.h
 F:	include/trace/
 F:	kernel/trace/
 F:	tools/testing/selftests/ftrace/
+F:	scripts/ftrace/
 
 TRACING MMIO ACCESSES (MMIOTRACE)
 M:	Steven Rostedt <rostedt@goodmis.org>
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
