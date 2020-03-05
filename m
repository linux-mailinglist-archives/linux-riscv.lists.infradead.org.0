Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4A1179EDE
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 06:02:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4y1bjuDihHx2oTrIgnH3W8hlU6GthTh0USQXogLFnA=; b=AaK6oRlXsxJjRO
	jO1ypHFL0TR8UJmTuLGQ0A2quX1DyKEsGq1xtnp11jDGYnJ8am5fqPfuVRf4rtzEMtK8bpwvLoigX
	qkbcfhTbshUD/GhKh3TwxvC1xuPxNZgwiHYx6Htlx08FvPb37HB4lZHdU9CTC2gC/JQf8x2Zdg5II
	04NMxyNBqtpnaU0cwd1b76FNfOAtxZ+wx+sxKc2nt0+bVpyQmIKWJRXOTUp/szB8PD/ZFuK0B9qxk
	4AawMT0hy8VyVEXop/rRIoHlTmfuBLWweCACu9KQvsGxEOjSdrrz4hxgmkoC/ufEqrpW4p//B/xoq
	tPOonkl+vVzIHyivIacw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9ieU-0004YS-55; Thu, 05 Mar 2020 05:02:30 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9ieM-0004Rn-38
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 05:02:23 +0000
Received: by mail-pf1-x441.google.com with SMTP id q9so2155838pfs.5
 for <linux-riscv@lists.infradead.org>; Wed, 04 Mar 2020 21:02:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R4y1bjuDihHx2oTrIgnH3W8hlU6GthTh0USQXogLFnA=;
 b=BAwLygGc+cbMJxseyd+EFVvY8q7V30mqYzVTTSkxSv6SEDlPP17rNHZjoHl0VR6psd
 UjgL8sjesWeib2YlBcV2uLrZdJaV/cOZh2X4xhbs5JlKkp6XmFt+N88DnDe106GJX2zp
 l+MTCHbtbt8onH+AZd0ufLRY/z2vOKBZswpck=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R4y1bjuDihHx2oTrIgnH3W8hlU6GthTh0USQXogLFnA=;
 b=Ja2sJWhXNFTfy7ClVIFHR5knZAZTfYwXcp6MvclVnBQoyeH/zEKHGwVK6xeyi1W3Os
 iTLcIMUdoG5cUrsRttZHohOIBhHcwJP14YoLYxovm3qQxXjtJXEPVjl2xrlXqbUKBbGn
 3/zYd5SvLxzm5i86w02Bu2prfyNvoSQsHCL6jC795gp/cbzYE5ynLSaryW0HLDwd9MOf
 1LFV08C7Cdhfb6wLVpTBaKeKAgdMHlSCUuIRfFI1NZPVdPH/9IRK9+b7uJxNAJ1oQZC8
 EV7S2EMurSlNh01I+t+2Hw4OwkYaBjPNTxxd4FyZPw3PMw2kQAQHb9pWpxNvfFCRPTXV
 OACg==
X-Gm-Message-State: ANhLgQ0W4ksssZs3WhEgRhYA5lmUNCbeHUs7Kctu3Takhy1Rm+u0gjaj
 cD/XFsASEzzPyIHs8/GLq3lQTg==
X-Google-Smtp-Source: ADFU+vvWx25e9jYZqzCSqaGAkmRaphEj/PgjffJq3MCSsLDQMbV5G1+yLhiRLui6IqbawgQdywROtw==
X-Received: by 2002:a63:441e:: with SMTP id r30mr5741154pga.51.1583384541389; 
 Wed, 04 Mar 2020 21:02:21 -0800 (PST)
Received: from ryzen.cs.washington.edu ([2607:4000:200:11:e9fe:faad:3d84:58ea])
 by smtp.gmail.com with ESMTPSA id y7sm17820466pfq.15.2020.03.04.21.02.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 21:02:20 -0800 (PST)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [PATCH bpf-next v5 3/4] bpf,
 doc: add BPF JIT for RV32G to BPF documentation
Date: Wed,  4 Mar 2020 21:02:06 -0800
Message-Id: <20200305050207.4159-4-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200305050207.4159-1-luke.r.nels@gmail.com>
References: <20200305050207.4159-1-luke.r.nels@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_210222_146724_F2CDC308 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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


