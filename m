Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0805179EE0
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 06:02:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sV8q7HarohWqKtnLYGNVE5KFLA+QloKZuMOzSIKtRfg=; b=KTVXvrMmNcv1yH
	p3Fz8yt4U4reHi5X7bksR4jFN40hE97En9ArApyEwwNA803heQnz9HYwqy0MypM2juUbpCbBfxcK3
	/KnAvXD0c4F1dDpdF35kNeGgjWqXgwLoXPdWpByp62ZjmnLSnoJB8o/xNe9ExJIhtqnwIQI54hAzm
	r9iHPLRb2RDN1gavs+nY5rurcbeBq7whq6O/EClNCBfrCDWVBX46YRD5Z0+dYfS4fjWbbgMAugvZa
	77yEf16Frm4/eQLHSPA4Dh+PMO/vWVtNdsREXkPQ4H83lzvBartYJbbpAFB/slvQJSCOozLJilHvK
	bNsacGQCZX2LmX6164KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9ieY-0004bo-09; Thu, 05 Mar 2020 05:02:34 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9ieO-0004Th-A7
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 05:02:25 +0000
Received: by mail-pg1-x544.google.com with SMTP id m5so2146748pgg.0
 for <linux-riscv@lists.infradead.org>; Wed, 04 Mar 2020 21:02:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sV8q7HarohWqKtnLYGNVE5KFLA+QloKZuMOzSIKtRfg=;
 b=dAYgGP3CO8Go0Zt3CaMIpp3oxWWrwBLg5KnHPPIq1+VU1MpOpmu2zAFLvsOtpeZ180
 NKGu6+L7b2be7/a8CLckxLaKZP1QmM/5QftVRYVbj5sqDFXW03auDeJMHhm2V1Cj1dlX
 nD37M0rf1FK33a5vwQcWtV+vReeBbTFCqxzas=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sV8q7HarohWqKtnLYGNVE5KFLA+QloKZuMOzSIKtRfg=;
 b=eXu+/4H3ZPjeUW9s4cEfo3RlbjcLAjcr2x/N83KhBswBW2YMpxTfW6OqjZzqjxqjSQ
 HcADLpW5kB8VixIUZRul6d97axxkx8LrGgwUeiHd19CC/hV4L932WeGOPFlcCU2vknfW
 HYnBOWw1Qg7fPnEomxQC9AxRjV4UibkMKQC2qS7DR2E+wCnMk0baR/8jt+BjxMyczyF9
 g76C9Z4LLd8vsS9tM1tk1OlFJvsenS1BCjVZdmiPPr9A9JOLejGqQfZ+NLC24BEllZv8
 RSczHvzFcj/crko4vlRIG1jEc4GTYXK/1bMVHho8rrMoPQ0XIsPvfs0iH9ing7SJKgaQ
 XlJA==
X-Gm-Message-State: ANhLgQ1uUg/BN8Erki0Yj+086nC0MA48nBiasZszfyK9i2hTL068BPAn
 +8awfcIccOBEId3OeZuwuQE/PQ==
X-Google-Smtp-Source: ADFU+vuDUOkuw26JMyYv3YyKm1JJ4tL0PWpDR+kh5XrqfpKiEVBUYAUr39/AOzWyra/fJYd3DntQNg==
X-Received: by 2002:a63:1e4f:: with SMTP id p15mr5929375pgm.28.1583384543147; 
 Wed, 04 Mar 2020 21:02:23 -0800 (PST)
Received: from ryzen.cs.washington.edu ([2607:4000:200:11:e9fe:faad:3d84:58ea])
 by smtp.gmail.com with ESMTPSA id y7sm17820466pfq.15.2020.03.04.21.02.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 21:02:22 -0800 (PST)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [PATCH bpf-next v5 4/4] MAINTAINERS: add entry for RV32G BPF JIT
Date: Wed,  4 Mar 2020 21:02:07 -0800
Message-Id: <20200305050207.4159-5-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200305050207.4159-1-luke.r.nels@gmail.com>
References: <20200305050207.4159-1-luke.r.nels@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_210224_378222_E21318AD 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Song Liu <songliubraving@fb.com>, linux-doc@vger.kernel.org,
 Yonghong Song <yhs@fb.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alexei Starovoitov <ast@kernel.org>, netdev@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jonathan Corbet <corbet@lwn.net>,
 Jakub Kicinski <kuba@kernel.org>, Andrii Nakryiko <andriin@fb.com>,
 Xi Wang <xi.wang@gmail.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Luke Nelson <luke.r.nels@gmail.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>,
 linux-kernel@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add a new entry for the 32-bit RISC-V JIT to MAINTAINERS and change
mailing list from netdev to bpf following the guidelines from
commit e42da4c62abb ("docs/bpf: Update bpf development Q/A file").

Cc: Björn Töpel <bjorn.topel@gmail.com>
Signed-off-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
---
 MAINTAINERS | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 8f27f40d22bb..ffad63a02d7a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3213,11 +3213,20 @@ L:	bpf@vger.kernel.org
 S:	Maintained
 F:	arch/powerpc/net/
 
-BPF JIT for RISC-V (RV64G)
+BPF JIT for RISC-V (32-bit)
+M:	Luke Nelson <luke.r.nels@gmail.com>
+M:	Xi Wang <xi.wang@gmail.com>
+L:	bpf@vger.kernel.org
+S:	Maintained
+F:	arch/riscv/net/
+X:	arch/riscv/net/bpf_jit_comp64.c
+
+BPF JIT for RISC-V (64-bit)
 M:	Björn Töpel <bjorn.topel@gmail.com>
-L:	netdev@vger.kernel.org
+L:	bpf@vger.kernel.org
 S:	Maintained
 F:	arch/riscv/net/
+X:	arch/riscv/net/bpf_jit_comp32.c
 
 BPF JIT for S390
 M:	Ilya Leoshkevich <iii@linux.ibm.com>
-- 
2.20.1


