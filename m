Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDD21E9C13
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 05:40:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bLgtIoa0/aGLhXFInfRTNTOzuJef6BrK68uDNEPJ828=; b=ZIkkPHDyXZXkIQK303EdPFJAGg
	plR9XcwjanyJjTCsh8TT1n+UjvGC0AHZbVmYBXTPncEgdPvKNp9ipkDPF7ESgg+RDuooHjMVN4Cf7
	dQLz5Ik7csbXkMXxvFZEP4/9IiDHPYSMjNbac4mNEK1Ez5SP3KtWJI8kIh5p1QuBvhL8NHIDsSlhJ
	Z/WIRMYuxj71q1bcNo9Qs9zKbsqS8aSlzRsVqYRx2j1A66OJF4bjvyt+AyQHDTawKG6259guztazA
	JcN40N1wsjSrWGERU2kLqU3mbCBfAgua0ncbZiz9DLWItSCr9b4PYEVg9JeoQyzS1NK4KF1hk7DKK
	A5HhacNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfbIt-00077s-Qb; Mon, 01 Jun 2020 03:39:59 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfbIp-000772-3x
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 03:39:57 +0000
Received: by mail-pl1-x641.google.com with SMTP id t7so3692119plr.0
 for <linux-riscv@lists.infradead.org>; Sun, 31 May 2020 20:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=bLgtIoa0/aGLhXFInfRTNTOzuJef6BrK68uDNEPJ828=;
 b=l/39mjMYoO4oJS7luzELO/2lW6/U5tiAstokV624lALvgDs/+o2LC4/+hpVixSJV5W
 fcEtxrHIuP0fR7gooFk1LFMBbVHXYFoHNFpsg4v41ujdZDnZQB1H3DBDIGUCCrHidU6J
 RAhEaoyoQeSzsQB1G3eP+uKBKgBUmL0OVA4NrXXoxPKvKtBUekbcsOlaIU33GjEBE/NG
 IjVTs6I8mLYBvX2GPsGjg2aS412x3dk4o9s2YuVG+EfwjsaS0nXE1hqGfNNl1rvM55Gs
 J/mSt13e6ZyC74iYZ/9MabKN1e3nyAX+pnvpHZRYcYsbgyQph3MT1CDKkHT71yEonWkD
 0HJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=bLgtIoa0/aGLhXFInfRTNTOzuJef6BrK68uDNEPJ828=;
 b=ILzNCBbEauJNIPqZ5mADqg0dCc2iNnWbIVGBZF9wEyi/c4tMbQbxMv5oFpyp/Gmve5
 DCBxw3OgafwWNdg8OkNvpH5/3KKxohoJXGQuBlb25o/TPvM0qLZBSb/XXlQnOoKO+zXK
 j9ChyXSz3xgwtXA9lAZS9m7x0v1vnFh3ItzemafkTK2MDwrXGfWYQmKdSW7jiTSlfoYD
 g49pDJ93hKmHd1SyFitPQvTiBK9J7EivI1auQtLaASg+ecTlbgLmapCu/IU7+4XQelmt
 CHa/Y/gF6Z75BmfdnjLF2+x69tXMhVI4tSfmkQQsvCksNCSPzLnnUpTGMH2kLDH0DBhc
 +73Q==
X-Gm-Message-State: AOAM531+b31w+ciqFl9+1nDDBPw/Ej4EGSFI7hfy5ZaAmBPhO9WXHClw
 k9h4P39trqrjiomHm67XOa7IDg==
X-Google-Smtp-Source: ABdhPJyaXFKUI77HVVvT+YA0Q4SIs611TTmJS4kGLNRX4MpwaPhrWamKOQdsj4C1z8tTwztJpAISqw==
X-Received: by 2002:a17:90b:792:: with SMTP id
 l18mr20066413pjz.24.1590982792816; 
 Sun, 31 May 2020 20:39:52 -0700 (PDT)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (2001-b400-e3df-96c7-30f0-f751-b645-f4e3.emome-ip6.hinet.net.
 [2001:b400:e3df:96c7:30f0:f751:b645:f4e3])
 by smtp.gmail.com with ESMTPSA id a7sm13102527pfa.187.2020.05.31.20.39.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 31 May 2020 20:39:52 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, daniel.thompson@linaro.org
Subject: [V5 patch 0/6] riscv: Add KGDB and KDB support
Date: Mon,  1 Jun 2020 11:39:05 +0800
Message-Id: <1590982751-13401-1-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_203955_193915_AD086253 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kgdb-bugreport@lists.sourceforge.net, linux-riscv@lists.infradead.org,
 Vincent Chen <vincent.chen@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch set implements required ports to enable RISC-V kernel to support
KGDB and KDB features. Because there is no immediate value in the RISC-V
trap instruction, the kernel cannot identify the purpose of each trap
exception through the opcode. This makes the existing identification
schemes in other architecture unsuitable for the RISC-V kernel. In order
to solve this problem, this patch adds the kgdb_has_hit_break() to kgdb.c
to help the RISC-V kernel identify the KGDB trap exception. In addition,
the XML target description was introduced in this patch set to enable KGDB
to report the contents of the $status, $cause and $badaddr registers.

This patchset has passed the kgdbts test suite provided by Linux kernel on
HiFive unleashed board and QEMU.

Changes since v4:
1. Fix some compile warnings reported by linux kbuild test
2. Select ARCH_OPTIONAL_KERNEL_RWX to enable the kconfig prompt of
   CONFIG_STRICT_KERNEL_RWX

Changes since v3:
1. remove duplicate macro defition
2. Rename CONFIG_ARCH_SUPPORTS_GDB_XML to CONFIG_HAVE_ARCH_KGDB_QXFER_PKT
   in the description of patch 03/05.

Changes since v2:
1. Fix typos
2. Rename CONFIG_ARCH_SUPPORTS_GDB_XML to CONFIG_HAVE_ARCH_KGDB_QXFER_PKT
3. Add the prefix kgdb_ to the handler functions and arrays that handle 
   "qxfer" packets

Changes since v1:
1. Replace the magic number with macro when filling the gdb_regs[].
2. Only support GDB XML packet instead of all query packets.
3. Move the macros used to parse instructions to parse_asm.h



Vincent Chen (6):
  kgdb: Add kgdb_has_hit_break function
  riscv: Add KGDB support
  kgdb: enable arch to support XML packet support.
  riscv: enable the Kconfig prompt of STRICT_KERNEL_RWX
  riscv: Use the XML target descriptions to report 3 system registers
  riscv: Add SW single-step support for KDB

 arch/riscv/Kconfig                 |   3 +
 arch/riscv/include/asm/gdb_xml.h   | 116 +++++++++++
 arch/riscv/include/asm/kdebug.h    |  12 ++
 arch/riscv/include/asm/kgdb.h      | 113 +++++++++++
 arch/riscv/include/asm/parse_asm.h | 219 +++++++++++++++++++++
 arch/riscv/kernel/Makefile         |   1 +
 arch/riscv/kernel/kgdb.c           | 392 +++++++++++++++++++++++++++++++++++++
 arch/riscv/kernel/traps.c          |   5 +
 include/linux/kgdb.h               |  12 ++
 kernel/debug/debug_core.c          |  12 ++
 kernel/debug/gdbstub.c             |  13 ++
 lib/Kconfig.kgdb                   |   5 +
 12 files changed, 903 insertions(+)
 create mode 100644 arch/riscv/include/asm/gdb_xml.h
 create mode 100644 arch/riscv/include/asm/kdebug.h
 create mode 100644 arch/riscv/include/asm/kgdb.h
 create mode 100644 arch/riscv/include/asm/parse_asm.h
 create mode 100644 arch/riscv/kernel/kgdb.c

-- 
2.7.4


