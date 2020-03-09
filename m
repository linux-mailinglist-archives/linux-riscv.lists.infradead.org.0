Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDC417DA95
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 09:22:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nWObDgjgZezZgCL2wVWQ9blCPfrUhtUR9HjDvFFeTdY=; b=lY8EFHww3mE1BU
	V9Kq6VoMGnG4mbEzWcWBSwORG8t1ibndbE6zllvxK3nbpX+rrMleEp6HjpRPLIr/fDCRZMtcjiYb7
	h5Dw0UXt9snPTENP0I2fOYzwM4ZtCJVq/QXySVWeA5NHSsKj0L9LzWdgUGAMh0opdPOtrk6ISfyet
	35pjTOuLp3PlcNGhKZlkU3JNlQ48Tv713u/3eBA4QcoCn2H8L31xPnsTMXs7bigJ95sm/JmWcpLo1
	x022P08R6fikyaFfIXv88gon0RZPTDj/9QG1Yq0OMCtVFAmt/8PLj8Zp0h/lINwahN7vu2VBKSqmG
	CWiXN5YIQaemVWdSF1uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBDgQ-0005pM-5h; Mon, 09 Mar 2020 08:22:42 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBDgN-0005ok-4k
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 08:22:40 +0000
Received: by mail-pj1-x1043.google.com with SMTP id d8so4109949pje.4
 for <linux-riscv@lists.infradead.org>; Mon, 09 Mar 2020 01:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nWObDgjgZezZgCL2wVWQ9blCPfrUhtUR9HjDvFFeTdY=;
 b=bc5P7UOaxBHY8fLZDV2BLlVD8GNbOYfXYuJxoL286xHGxp49CPe8qq1h+xycDZELlj
 nBc2Xr9xYT34ZPVpOEHHtl7R3XpyUVvc9CsztPBOwQhz5B7SkNH9BobviqvnBAE6JFtG
 tXhTEUO9uEc3AIp9qcvkHxNxNTtHMjmib4zVUDXw6bK3K+sry5Kr17tSOOLREo5vkjRW
 mlh7DwT5kdX4nRFWznpDBAGlBO87EJrPUV4znEfTrcLuOAGtO09FrMhP82npOyjh9DLn
 0md1fu0+As8F7dn9TaGYzeG9B+coygjdCgnGA5H1ehi1ByRkI7n6Novvc1zUm4bjQUxo
 Kw7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nWObDgjgZezZgCL2wVWQ9blCPfrUhtUR9HjDvFFeTdY=;
 b=CmLt8xXLyXiMdtOj3/ysBXJFWyK2FPoOgtaHj8gj3g3pJvTZfLC4k8uzAU5/8iQPWD
 2Ya4xXY1UdhbkjiedwtNLS45unN2TWXrRaU13NptwgsqwoU6m58c1eA262NtJNTunW49
 mhjHVTxCTJcQcVX4A7Eg+nosuvIbkQQ++KdlLsRuh8/c2UU0UDOwkwBPvma56T18xk+p
 iR3ejKhkUUIT+O9/SMHrThP2/XKsB8fdD9a0STOGzEEcbJcSZcIGClKNqI3m1FJaxw2C
 i20Q/RTsbivVdr2PFpi4ngERDDuHFt3bIU+MiMHFaBOBtYHXsryaxMQmX9fh912IxAZZ
 oyeg==
X-Gm-Message-State: ANhLgQ2IlKsN9SFZVy4BLkDDq0655ll2p6AMBRh15bsjKdBSKXN3ZAxl
 h5Rt8tqnQumpErzifizOZuYuRQ==
X-Google-Smtp-Source: ADFU+vtFnBt37omYLnPWPoZcI3BtAUZIMhCWGDpPntjbGLQaCRb4SJZ4PFLY/wRjPwzVFN3YpeNECA==
X-Received: by 2002:a17:902:8603:: with SMTP id
 f3mr14981196plo.235.1583742158258; 
 Mon, 09 Mar 2020 01:22:38 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id v5sm18364779pfn.64.2020.03.09.01.22.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 01:22:37 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/9] Support strict kernel memory permissions for security
Date: Mon,  9 Mar 2020 16:22:20 +0800
Message-Id: <cover.1583741997.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_012239_214624_BC6D7E93 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The main purpose of this patch series is changing the kernel mapping permission
, make sure that code is not writeable, data is not executable, and read-only
data is neither writable nor executable.

This patch series also supports the relevant implementations such as
ARCH_HAS_SET_MEMORY, ARCH_HAS_SET_DIRECT_MAP,
ARCH_SUPPORTS_DEBUG_PAGEALLOC and DEBUG_WX.

Changes in v2:
 - Use _data to specify the start of data section with write permission.
 - Change ftrace patch text implementaion.
 - Separate DEBUG_WX patch to another patchset.

Zong Li (9):
  riscv: add ARCH_HAS_SET_MEMORY support
  riscv: add ARCH_HAS_SET_DIRECT_MAP support
  riscv: add ARCH_SUPPORTS_DEBUG_PAGEALLOC support
  riscv: move exception table immediately after RO_DATA
  riscv: add alignment for text, rodata and data sections
  riscv: add STRICT_KERNEL_RWX support
  riscv: add macro to get instruction length
  riscv: introduce interfaces to patch kernel code
  riscv: patch code by fixmap mapping

 arch/riscv/Kconfig                  |   6 +
 arch/riscv/include/asm/bug.h        |   8 ++
 arch/riscv/include/asm/fixmap.h     |   2 +
 arch/riscv/include/asm/patch.h      |  12 ++
 arch/riscv/include/asm/set_memory.h |  41 ++++++
 arch/riscv/kernel/Makefile          |   4 +-
 arch/riscv/kernel/ftrace.c          |  13 +-
 arch/riscv/kernel/patch.c           | 124 ++++++++++++++++++
 arch/riscv/kernel/traps.c           |   3 +-
 arch/riscv/kernel/vmlinux.lds.S     |  11 +-
 arch/riscv/mm/Makefile              |   1 +
 arch/riscv/mm/init.c                |  45 +++++++
 arch/riscv/mm/pageattr.c            | 187 ++++++++++++++++++++++++++++
 13 files changed, 443 insertions(+), 14 deletions(-)
 create mode 100644 arch/riscv/include/asm/patch.h
 create mode 100644 arch/riscv/include/asm/set_memory.h
 create mode 100644 arch/riscv/kernel/patch.c
 create mode 100644 arch/riscv/mm/pageattr.c

-- 
2.25.1


