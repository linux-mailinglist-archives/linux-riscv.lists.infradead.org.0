Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A160176978
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Mar 2020 01:51:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4y1bjuDihHx2oTrIgnH3W8hlU6GthTh0USQXogLFnA=; b=lA1/IwWRFXkKoC
	hKpzLPX3DKp/6p9QeXP88dypQZtKv04HkDmLu0/CTBXgAoCRYJOkPRWU3FLCtQXFnZw8JEyCDVqyw
	mfnnZPtJy+4vf93Wh7uu3PoQHM7ptQq/RVezGVI88ut+kmsLiht8Aae1KHx4qKaaFGpdKBpAna0As
	pWahrE/8txVhx4jdzVGKYadhKuFCkQCjP0jVRg3iUXhHJdf8+5/y2uF/DKhFxL1QP2D5yi6mgJDoR
	GkpvI2ETqK0KImwPhaHYgqZ5AeA4qKuJXGAARB9YEGpRyVuoPX2Eaz5zdZRSnKea/4FCYenIrOQiX
	FC6dzCQcPm24ywlS4lUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8vlt-0004Js-Gb; Tue, 03 Mar 2020 00:50:53 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8vln-0004FN-6r
 for linux-riscv@lists.infradead.org; Tue, 03 Mar 2020 00:50:48 +0000
Received: by mail-pf1-x444.google.com with SMTP id 2so544395pfg.12
 for <linux-riscv@lists.infradead.org>; Mon, 02 Mar 2020 16:50:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R4y1bjuDihHx2oTrIgnH3W8hlU6GthTh0USQXogLFnA=;
 b=AfeBTOyASViNVGc5rgKB3KnjpIqe4pFbwu36CkULNwUFVGDxk25zJLdGqoSVKjup47
 xFFy7KPqY3Rwxcce91SnNlR1s3r6GMM7ZGnF6WznrL3S81OKVoagMKdH5aZThFWFJJfK
 T+GJynvNZMURfh0SKIljpRFGUyOCq6AG0dfAI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R4y1bjuDihHx2oTrIgnH3W8hlU6GthTh0USQXogLFnA=;
 b=tf0kjZtoaoROOErM3tx4LcKSFa1o5jGTsBLRer5vn7ZJk0NB16j1A7YmLO/16teA0V
 rjkt9GVAbPjoiHiiLei6+AK+oMP59AWaWvwY7DjrSyt+jI0eLe4Z49tcCUMpjD/t19WC
 ztyCWzRZeZD9e+ajOtqdktfk1iG8dVuWdJBzu8A5bPLynytYji/1sA5m1AgqVvqQy7KA
 CXzlHEVswadGIixwALwPsX2lDuvosWj8Un7MCfr3r49Vdg/ky95X/yWp5VQjxfjn95Xb
 FlyzAMLN/riA64KpnWDkrL/5yLvo1N/iDmz18qJ/K6i64d01PgfEvqbd8fW7Q3/bn8YH
 eiZg==
X-Gm-Message-State: ANhLgQ0+VjTqjipJSNejodV78pZ3znRR10BhPp8XG8Pht47o4VVh7/0e
 V34VujQH4nAQpgT4puPWcSVEXw==
X-Google-Smtp-Source: ADFU+vu4FJlF/yF0bGWMe5RPpUT1cUQoz8tMHkOM/dUGIBHYENG8NRhF2KH4gIKtOabdnMpPHDUJSw==
X-Received: by 2002:a62:6c6:: with SMTP id 189mr1637105pfg.224.1583196646317; 
 Mon, 02 Mar 2020 16:50:46 -0800 (PST)
Received: from ryzen.cs.washington.edu ([2607:4000:200:11:b5cd:49c6:f4f6:8295])
 by smtp.gmail.com with ESMTPSA id c15sm357529pja.30.2020.03.02.16.50.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 16:50:45 -0800 (PST)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [PATCH bpf-next v4 3/4] bpf,
 doc: add BPF JIT for RV32G to BPF documentation
Date: Mon,  2 Mar 2020 16:50:34 -0800
Message-Id: <20200303005035.13814-4-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303005035.13814-1-luke.r.nels@gmail.com>
References: <20200303005035.13814-1-luke.r.nels@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_165047_298232_FF20BF08 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
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

Update filter.txt and admin-guide to mention the BPF JIT for RV32G.

Co-developed-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
---
 Documentation/admin-guide/sysctl/net.rst | 3 ++-
 Documentation/networking/filter.txt      | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/admin-guide/sysctl/net.rst b/Documentation/admin-guide/sysctl/net.rst
index 287b98708a40..e043c9213388 100644
--- a/Documentation/admin-guide/sysctl/net.rst
+++ b/Documentation/admin-guide/sysctl/net.rst
@@ -67,7 +67,8 @@ two flavors of JITs, the newer eBPF JIT currently supported on:
   - sparc64
   - mips64
   - s390x
-  - riscv
+  - riscv64
+  - riscv32
 
 And the older cBPF JIT supported on the following archs:
 
diff --git a/Documentation/networking/filter.txt b/Documentation/networking/filter.txt
index c4a328f2d57a..2f0f8b17dade 100644
--- a/Documentation/networking/filter.txt
+++ b/Documentation/networking/filter.txt
@@ -606,7 +606,7 @@ before a conversion to the new layout is being done behind the scenes!
 
 Currently, the classic BPF format is being used for JITing on most
 32-bit architectures, whereas x86-64, aarch64, s390x, powerpc64,
-sparc64, arm32, riscv (RV64G) perform JIT compilation from eBPF
+sparc64, arm32, riscv64, riscv32 perform JIT compilation from eBPF
 instruction set.
 
 Some core changes of the new internal format:
-- 
2.20.1


