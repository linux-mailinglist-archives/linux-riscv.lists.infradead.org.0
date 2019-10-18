Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95375DBBB9
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 06:15:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A+Sw+mxMRtLhtLB2j/rNll6V63vVqdQp5mXvd//rlZc=; b=IhsqJXZmG+RQG3
	UnJOQB3iOPvHj3OJ6Xyu2gJYA2SI3Eugl0v/xSSv1FRjAWbsBSLNpYs6+KrviL8w6Y/PeMYupAGXg
	X2izALf/eUugDm4htEQt4RVsxOE5GuBqBpNY2GAN2z6KUMyQcCJvNGMhA6uhEyea9ZiPSh47vT/FD
	ghZhG6BcopXCc41+FfqaSY8Y7uJvPJ7lA9cKXkC62KTKOlBMWIcErpLucnmKrrCxLun1paB7JiGEO
	T7KHHYwuejIzFd9mbkJxeSLT8GSYiD7FIXAUBpXIBu4g/viHU2osLymAa8Hyx8Zp0tHFXiDo8uou9
	wXRNX/myBR7fHfz8cdUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLJfR-0005Sj-Uy; Fri, 18 Oct 2019 04:15:09 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLJfN-0004h7-UY
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 04:15:07 +0000
Received: by mail-wm1-x341.google.com with SMTP id 5so4643135wmg.0
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 21:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GXpwiWbrAU/653GmrWZ4CKDfopVqbQJlCnoRGMU0IXo=;
 b=HCkne4s8lruvHSjpE5jf0OgLyMhPwrvNwZ3XZUMDJxIAmbTJ7U0e0j5lACmvchXOqb
 2wIXjnp6mVboS7gpgge2/f0WIp8FzhCfT1YzwjZn2XMChTk+3gX4w/G3wm1ASj5evE2v
 9KiN6Bd+zRI7o53M1ioDgisIswMb4TuhvO4CAV+HMlcpRWwIq6DGiBu+HsFpiLvXgdyx
 yyAuvxqH9F6W51uc00HyFnNZGHyf5BfLq8tgaAZ5qX1mMOJQD3r3KIrfjNUUGuKn5IDz
 wwRkRZtW4RWjuR6lMcdS7SsHtCR7KkOHVEIl/XHnXpbtnpPonSGPxfNxqxg7BH4lcH/l
 Ympw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GXpwiWbrAU/653GmrWZ4CKDfopVqbQJlCnoRGMU0IXo=;
 b=c7IOLqmHyDgS3AauaTy9AFXxSsFQthnhSoAqoY7R679JmUBLcvg81M4GpEHNfrX8Qo
 NRlJHb4oZW5BcfH9g1QjAKPPAgLZPjV6nkN7HsBV88wlWJ/wSLK3IRczw1u3L0tExbd1
 yandfwbU2nSYeGL460KHVtUC6UxNhig0EVYekUuVnl+vJ2cSjffLnlf1KwIJkHdRXdU9
 77O5htASRaKj4L0UrYmpsLEFENXFZe2DrtKZYAylYmu3Bc9PCtJJrTOnaNczOqgTL6y5
 GQxpc+XAaG2tDcURbHVwu7ynqeNRWvpbffb80s5+1CqTgoPdNgLvBZIWXeE2ggyNsmi+
 UYeA==
X-Gm-Message-State: APjAAAVa3jVr1Ygy9A5MYZM4caSOdHpRMCM5IzEQxlhwnlk1bR5DTz34
 +fVZ8bSVU0IYBfmCxt22LiI=
X-Google-Smtp-Source: APXvYqz+4Pinskrf2UCosw5rgRX7f2A0VhKcLk6IxtbU+1p4dOJAsqVStmjoGBzaMqSnB+Zff8cyzQ==
X-Received: by 2002:a1c:9e07:: with SMTP id h7mr5807160wme.96.1571372104081;
 Thu, 17 Oct 2019 21:15:04 -0700 (PDT)
Received: from ltop.local ([2a02:a03f:40ac:ce00:18e1:7d90:ccf5:4489])
 by smtp.gmail.com with ESMTPSA id x9sm4453820wrq.63.2019.10.17.21.15.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 17 Oct 2019 21:15:03 -0700 (PDT)
Date: Fri, 18 Oct 2019 06:15:02 +0200
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH 5/8] riscv: add missing prototypes
Message-ID: <20191018041501.cuyyhcm23dsihcif@ltop.local>
References: <20191018004929.3445-1-paul.walmsley@sifive.com>
 <20191018004929.3445-6-paul.walmsley@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018004929.3445-6-paul.walmsley@sifive.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_211506_028470_2C0A3F5D 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luc.vanoostenryck[at]gmail.com)
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 05:49:26PM -0700, Paul Walmsley wrote:
> sparse identifies these missing prototypes when building arch/riscv:
> 
> arch/riscv/kernel/cpu.c:149:29: warning: symbol 'cpuinfo_op' was not declared. Should it be static?
> arch/riscv/kernel/irq.c:27:29: warning: symbol 'do_IRQ' was not declared. Should it be static?
> arch/riscv/kernel/irq.c:57:13: warning: symbol 'init_IRQ' was not declared. Should it be static?
> arch/riscv/kernel/syscall_table.c:15:6: warning: symbol 'sys_call_table' was not declared. Should it be static?
> arch/riscv/kernel/time.c:15:13: warning: symbol 'time_init' was not declared. Should it be static?
> arch/riscv/kernel/smpboot.c:135:24: warning: symbol 'smp_callin' was not declared. Should it be static?
> arch/riscv/kernel/smp.c:72:5: warning: symbol 'setup_profiling_timer' was not declared. Should it be static?
> arch/riscv/mm/init.c:151:7: warning: symbol 'trampoline_pg_dir' was not declared. Should it be static?
> arch/riscv/mm/init.c:157:7: warning: symbol 'early_pg_dir' was not declared. Should it be static?
> arch/riscv/kernel/process.c:32:6: warning: symbol 'show_regs' was not declared. Should it be static?
> arch/riscv/kernel/ptrace.c:151:6: warning: symbol 'do_syscall_trace_enter' was not declared. Should it be static?
> arch/riscv/kernel/ptrace.c:165:6: warning: symbol 'do_syscall_trace_exit' was not declared. Should it be static?
> 
> Fix by adding the missing prototypes to the appropriate header files.

For functions defined in C but used ony in assembly, you can also simply mark
them as '__visible'  (aka __attribute__((exrernally_visible)) ).
 
Best regards,
-- Luc

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
