Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC29199B70
	for <lists+linux-riscv@lfdr.de>; Tue, 31 Mar 2020 18:28:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xmejv1WCFjjBIgLzMgbivb8GEaT8ygX9pEG6om1gl3E=; b=GDANXTxBWJ4J2j
	ssdmpfYT0W85KW2D9vjViQQtX6/nqfg4i2FtbiISUdoRqv7i5esjPgdVbNhEIyJSAJXswP5QXZIbQ
	jFqvLqgj4Z88FIK3l2TQqoIb9ALFpQZ8qd/zAMDlFA5qW2ylr/oPbKDLPsksQCEOTwvn9S37OM3pC
	d47Q4M3HVdSx6nr6c8EYi+d3T613RHJjkYmSxz9rq6JH3IinSyclLD59+revQkCrfIKak8vHKLWEP
	clIfflBR/Vl70JIv0Z6t3DtSqkRNfo1WSvWT1kBibxAfrfYQEnULctP0f6vSgq1983a3bL/oEeUUD
	XhB8QqCGgEe13ep8tPGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJk4-0007ol-I7; Tue, 31 Mar 2020 16:27:56 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJjC-00074j-Ul
 for linux-riscv@bombadil.infradead.org; Tue, 31 Mar 2020 16:27:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=Xmejv1WCFjjBIgLzMgbivb8GEaT8ygX9pEG6om1gl3E=; b=P+LOj/3+/pEYciirsQwuQbQkxP
 rQxSNwGgYPIQjABzslFBvOnQbCKnoD5qWnbCy86dJfGyfOuLzzeUd/U8QmdQJFjUvHbl2M4n8h0jh
 7Y6nezk8qStDzrZk7oUo+WgnlOx8+Aob2KufQbEVCSR88QjAnZ+iUV8s5vICSiZemP/3tvsKdOtQE
 L50/lSaU/lyztXVD52tSAXN1EBKhZhkh1XI+ip5RNy1wXKTKu/WN/H4fkn6gRnwTIOILoTfx0ZvOl
 UQnCxN4aZDdLAe1kCaNp07gfDAxGxkwPNOB/47dacUnOc/Y1SZSvuhueK9Wldvi+FpGVdFcaofddY
 ekYQV+gg==;
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJH0m-0002E1-Hm
 for linux-riscv@lists.infradead.org; Tue, 31 Mar 2020 13:33:01 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 47A652071A;
 Tue, 31 Mar 2020 13:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585661578;
 bh=xjsNuevst2hdoei+2YBbw5AgZ2uz8egnJHzxF30a8nE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=AKHoXwoa7Zff+4XX9H7YktH1P5TqfcvSPOjj3q5b12fvv7S5USQRJJavhLGvPoq1r
 v2jq3btdOo7/KW9kO57RD6C7jxevyGTT5TsbRizoP7pFIC44Pi0ZZUz11qzo34gefh
 WUZq/LzvwaNl+ty9qjxc3W99SMtO0ucdw+uQt5KQ=
Date: Tue, 31 Mar 2020 22:32:54 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH v3 0/9] Support strict kernel memory permissions for
 security
Message-Id: <20200331223254.919b92750962fefed5a6646f@kernel.org>
In-Reply-To: <cover.1583772574.git.zong.li@sifive.com>
References: <cover.1583772574.git.zong.li@sifive.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu, palmer@dabbelt.com,
 linux-kernel@vger.kernel.org, paul.walmsley@sifive.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Zong,

On Tue, 10 Mar 2020 00:55:35 +0800
Zong Li <zong.li@sifive.com> wrote:

> The main purpose of this patch series is changing the kernel mapping permission
> , make sure that code is not writeable, data is not executable, and read-only
> data is neither writable nor executable.
> 
> This patch series also supports the relevant implementations such as
> ARCH_HAS_SET_MEMORY, ARCH_HAS_SET_DIRECT_MAP,
> ARCH_SUPPORTS_DEBUG_PAGEALLOC and DEBUG_WX.

The order of the patches seems a bit strange. Since the first 7 patches
makes kernel read-only, at that point ftrace is broken and it is fixed
by the last 2 patches. That is not bisect-friendly. Can you move the
last 2 patches to the top?

Thank you,

> 
> Changes in v3:
>  - Fix build error on nommu configuration. We already support nommu on
>    RISC-V, so we should consider nommu case and test not only rv32/64,
>    but also nommu.
> 
> Changes in v2:
>  - Use _data to specify the start of data section with write permission.
>  - Change ftrace patch text implementaion.
>  - Separate DEBUG_WX patch to another patchset.
> 
> Zong Li (9):
>   riscv: add ARCH_HAS_SET_MEMORY support
>   riscv: add ARCH_HAS_SET_DIRECT_MAP support
>   riscv: add ARCH_SUPPORTS_DEBUG_PAGEALLOC support
>   riscv: move exception table immediately after RO_DATA
>   riscv: add alignment for text, rodata and data sections
>   riscv: add STRICT_KERNEL_RWX support
>   riscv: add macro to get instruction length
>   riscv: introduce interfaces to patch kernel code
>   riscv: patch code by fixmap mapping
> 
>  arch/riscv/Kconfig                  |   6 +
>  arch/riscv/include/asm/bug.h        |   8 ++
>  arch/riscv/include/asm/fixmap.h     |   2 +
>  arch/riscv/include/asm/patch.h      |  12 ++
>  arch/riscv/include/asm/set_memory.h |  48 +++++++
>  arch/riscv/kernel/Makefile          |   4 +-
>  arch/riscv/kernel/ftrace.c          |  13 +-
>  arch/riscv/kernel/patch.c           | 120 ++++++++++++++++++
>  arch/riscv/kernel/traps.c           |   3 +-
>  arch/riscv/kernel/vmlinux.lds.S     |  11 +-
>  arch/riscv/mm/Makefile              |   2 +-
>  arch/riscv/mm/init.c                |  44 +++++++
>  arch/riscv/mm/pageattr.c            | 187 ++++++++++++++++++++++++++++
>  13 files changed, 445 insertions(+), 15 deletions(-)
>  create mode 100644 arch/riscv/include/asm/patch.h
>  create mode 100644 arch/riscv/include/asm/set_memory.h
>  create mode 100644 arch/riscv/kernel/patch.c
>  create mode 100644 arch/riscv/mm/pageattr.c
> 
> -- 
> 2.25.1
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

