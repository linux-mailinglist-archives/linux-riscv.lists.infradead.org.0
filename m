Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B84181AB5EC
	for <lists+linux-riscv@lfdr.de>; Thu, 16 Apr 2020 04:38:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=er76urwQouI/g3SR1sFnjn6b41XHAVJ+xxkv1n1+Ec4=; b=guPs4roTWEYjVc1S1ygqCdNoe2
	VLN2ZnHFPZ1P+PmheB0xumwNc3ZdSntN+rjiz9bItkgP/Q0KSzI+iabhhbjQkCcFKquYuKvDcyUqQ
	DP0KXLFjt1Hs9E8+McMmZvXDJgCX/XObyWupnB1AJmywLVztUS9om9ViXWf/bEYHozj5kqf3IDEIX
	obEHrMENykuebNHvvTyO6E6sLsCWhbzAq2e8HVLDyp7DAr38qKzjOeTg3Lmm8EieY9d3Exf1Nr+TQ
	b7tHl2Uj2DsQ9l3SEcH/BmfUhaoPj7e+JMExdOxwYhym5JPUqxEhwcw/Wi9NKbi480BJwosihTjT4
	Xe+K56Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOuQ9-0008Jk-8K; Thu, 16 Apr 2020 02:38:29 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOuQ5-0008Iw-Gq
 for linux-riscv@lists.infradead.org; Thu, 16 Apr 2020 02:38:27 +0000
Received: by mail-pf1-x444.google.com with SMTP id d1so996516pfh.1
 for <linux-riscv@lists.infradead.org>; Wed, 15 Apr 2020 19:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=er76urwQouI/g3SR1sFnjn6b41XHAVJ+xxkv1n1+Ec4=;
 b=WH1MB3z7pOhcqPVlT7qwJ9p0d7IU5DyXqw1eclK5R8of6TCBgsOJAvTg5JS2Cd2G2E
 kAvHk5b962HXajhhqF5RBAxN7CZUCDJp/UzrQATNCeEVvkfYJ39k4aa+NMwYOpGCZJDi
 lSrqGw3k73+BsG6CytmU+os3gQtFkC1cXFSuvYmahP6MRwlrQKu9wmDUjpvwBHof4X+W
 hhXa9sN1GvBltKQJUidC4Rkpf/LZxk1SHQjLAx2/SMrMyUZht9w6No4JVhMnNJmvjquJ
 E4EeLqQwhJnOX8YIo/0KjxmE93KVVUt2wDnP7WNxpTU/hnt+N2ZgXN8+2qIoCwevL2JK
 v0Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=er76urwQouI/g3SR1sFnjn6b41XHAVJ+xxkv1n1+Ec4=;
 b=hi/Z0bhSZs/C7xyZvVE3ZrWmOVZ8th+rGvUA26SYO+U9YZaqu6jOnL91aHxo+Z318B
 bPob+A7oHd4x6wtIVcbuEbUyItV0XJXnY/PbJpWkiMIu49y31UwdyBWaEvTVdzaAHw8S
 QGuHn0D5kW1cBgiOUf95xFM+uverId19cHhp5btge6HS60dnCUISv88qET7eYf7F556+
 1Zad0ET27HJkD2P9WFkfYCQHAiR+8NfusGiOV9rRtMePZl16dg8PHpraxkgkEeR7/BRb
 MuOlDa6advFwJGbIkiXieDXGHUVcWZwoVsnfGrEq84Zj08queW/0bE/VvG2XQa/ASE2a
 JqhA==
X-Gm-Message-State: AGi0PuZwoWl6vtF82uhhPz05MBc3sg1dN4Un3pLUlr0XGFyX3OnwCKJm
 iTFxlqarcHBx50TO6M9CRa8Uqw==
X-Google-Smtp-Source: APiQypIJPYyeProR+zepCLcJ4I5gb3Q6SCuCSZCzWrI8tHCi6iGK+zdkrN046gQYzO0c30ub3C5ngw==
X-Received: by 2002:a63:1665:: with SMTP id 37mr30216071pgw.308.1587004704648; 
 Wed, 15 Apr 2020 19:38:24 -0700 (PDT)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id i25sm11347536pfd.140.2020.04.15.19.38.22
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 Apr 2020 19:38:24 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, daniel.thompson@linaro.org
Subject: [PATCH v4 0/5] Add KGDB and KDB support
Date: Thu, 16 Apr 2020 10:38:03 +0800
Message-Id: <1587004688-19788-1-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_193826_077594_2FFBDF33 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Vincent Chen (5):
  kgdb: Add kgdb_has_hit_break function
  riscv: Add KGDB support
  kgdb: enable arch to support XML packet support.
  riscv: Use the XML target descriptions to report 3 system registers
  riscv: Add SW single-step support for KDB

 arch/riscv/Kconfig                 |   2 +
 arch/riscv/include/asm/gdb_xml.h   | 117 +++++++++++
 arch/riscv/include/asm/kdebug.h    |  12 ++
 arch/riscv/include/asm/kgdb.h      | 112 +++++++++++
 arch/riscv/include/asm/parse_asm.h | 219 +++++++++++++++++++++
 arch/riscv/kernel/Makefile         |   1 +
 arch/riscv/kernel/kgdb.c           | 390 +++++++++++++++++++++++++++++++++++++
 arch/riscv/kernel/traps.c          |   5 +
 include/linux/kgdb.h               |  11 ++
 kernel/debug/debug_core.c          |  12 ++
 kernel/debug/gdbstub.c             |  13 ++
 lib/Kconfig.kgdb                   |   5 +
 12 files changed, 899 insertions(+)
 create mode 100644 arch/riscv/include/asm/gdb_xml.h
 create mode 100644 arch/riscv/include/asm/kdebug.h
 create mode 100644 arch/riscv/include/asm/kgdb.h
 create mode 100644 arch/riscv/include/asm/parse_asm.h
 create mode 100644 arch/riscv/kernel/kgdb.c

-- 
2.7.4


