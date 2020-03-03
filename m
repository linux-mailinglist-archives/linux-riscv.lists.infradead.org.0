Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1152517697F
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Mar 2020 01:51:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3qpNU4bvUiCHpvV7L6ZFkbr2aibmMm2XkgbkHKRq+RA=; b=TXI3uBoff9TGlW
	2wimQ0EpW96gM8uuarBX4WM4z8+0M9xksjihhethXWpQ7T7zK2NturvZCJemRUpmzJk/UATaALgVp
	anFXSR0QiKI2UooPtP0/vDG7Up0NzFWMaw2bGhtHEMNAsB0Y1l++7K7sb/vXmWFeVjJt/3jWLJ20C
	zefsMZxZcdg2RYIQTzaoTnwZf7JR+y+pH2NBY6jV8Va8lSYbVLEs9GBPcnuGfWKqHRb0V8naqd8vP
	Gsf3xHb1DMFWZKW4J3NmHaQrRnQLfwQjUHhzczGEi5HmxifXjy7tygstPNyiXjVA5s6CluZer37QD
	g9mG24lQwa765Qcw0STg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8vm1-0004T2-Bu; Tue, 03 Mar 2020 00:51:01 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8vlp-0004Gl-1p
 for linux-riscv@lists.infradead.org; Tue, 03 Mar 2020 00:50:50 +0000
Received: by mail-pg1-x543.google.com with SMTP id 7so676656pgr.2
 for <linux-riscv@lists.infradead.org>; Mon, 02 Mar 2020 16:50:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3qpNU4bvUiCHpvV7L6ZFkbr2aibmMm2XkgbkHKRq+RA=;
 b=i097SGazMzapQTbCmTCM1ihtZ7VsNJyWAVTlS8VzybpMHYpv79RVK82V42IbyWrCUQ
 /tWCyPUdhgc0fc4N6KisDXZdp4zqC1yrrqNBihRtGLThZoy2n9BA0gQ6HgaSxGxwYFCT
 LSnKaekYmM6v7TZ8b+zNPpzMrf7wVn5V8ZWmc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3qpNU4bvUiCHpvV7L6ZFkbr2aibmMm2XkgbkHKRq+RA=;
 b=F34mQfKVkoTsHOCfxsiWtcmmQdjzjWI6mvB8kDREG3wrkZE8hiMEKJHOuHXfg4dZz0
 hJZzqlYmVoDQIZOHBFUq+9XrSbufDyiX9ssTQ0p7KKHBe1602p8Tj6ISLO51rQSyfOFj
 FiWguCA/WHBi0k0wjX3XhsnzJjJfdKtD+9JnxUoKG4N+7m9XmAKMiNBMagRzidAjXlyf
 3/thZYh33O/t50GUNIiKAtJVz4GIrN9NhYOYF2PSxMTxugaLd51WCZyy3DWjhascdX0h
 zHp91K29xcsu3A9zlCHbbglCTpkzkba5ASDDAT5KW8E1gQq9K77cEbbYQ6Z/LYhnpOQY
 nJ7A==
X-Gm-Message-State: ANhLgQ0rrHJrBiqt4le3ohVGcITiLu1bkbq7mATs/4TDvGAa7Sbaz2t/
 ICZfJ7e6ORhf3YcGBdoeKq8Jng==
X-Google-Smtp-Source: ADFU+vsXNe4K0+HOCq044vz+4uavRlyW2t0lhW22ri/T6Yt6Dpe1MJwDY4NJT+/vEPOYLh45lbXXsQ==
X-Received: by 2002:a63:c507:: with SMTP id f7mr1508127pgd.278.1583196648102; 
 Mon, 02 Mar 2020 16:50:48 -0800 (PST)
Received: from ryzen.cs.washington.edu ([2607:4000:200:11:b5cd:49c6:f4f6:8295])
 by smtp.gmail.com with ESMTPSA id c15sm357529pja.30.2020.03.02.16.50.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 16:50:47 -0800 (PST)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [PATCH bpf-next v4 4/4] MAINTAINERS: Add entry for RV32G BPF JIT
Date: Mon,  2 Mar 2020 16:50:35 -0800
Message-Id: <20200303005035.13814-5-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303005035.13814-1-luke.r.nels@gmail.com>
References: <20200303005035.13814-1-luke.r.nels@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_165049_153177_73D6CB99 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

Cc: Björn Töpel <bjorn.topel@gmail.com>
Signed-off-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
---
 MAINTAINERS | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 8f27f40d22bb..fdd8b99f18db 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3213,11 +3213,20 @@ L:	bpf@vger.kernel.org
 S:	Maintained
 F:	arch/powerpc/net/
 
-BPF JIT for RISC-V (RV64G)
+BPF JIT for 32-bit RISC-V (RV32G)
+M:	Luke Nelson <luke.r.nels@gmail.com>
+M:	Xi Wang <xi.wang@gmail.com>
+L:	bpf@vger.kernel.org
+S:	Maintained
+F:	arch/riscv/net/
+X:	arch/riscv/net/bpf_jit_comp.c
+
+BPF JIT for 64-bit RISC-V (RV64G)
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


