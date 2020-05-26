Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2A51E230A
	for <lists+linux-riscv@lfdr.de>; Tue, 26 May 2020 15:38:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O/mpBidl5KzS3rb4PN7X5hauHHU7Bj8b6nZgC1/NWhk=; b=UmWu5sCn2iWRHO2u8qDbCo+s0
	h8xKtcEkgqle9Ou4i5dvkNdZLyXU0WUNgOHp2fdj0MZQ35yjloHy9cVyaMl4OWA0+DUQaVHpsj2ZR
	p802UwNKaTCmKL4/l53seEBy4M/6/Cpy/jN+JPnny6p0UUnxYAZnewNuhvlxZGvfnkg6GG8hj1D0v
	Duz6fkNiUBZVlSBwOmMt/GpytJkxTm3ahS/p0YrFXY4q+QbS/TjhcDhcMFsK3uwpagMPmUsMFF94i
	sIlBw75+i/GPjQXWjJm5vodsoLWE9dfCQXHwf3VSI7NYKjhiGR/yN6f/hmWjcHK7DtiHYl5M8fJ3k
	UenVzZjUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdZmz-0000nA-Ab; Tue, 26 May 2020 13:38:41 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdZmv-0000kO-MR
 for linux-riscv@lists.infradead.org; Tue, 26 May 2020 13:38:38 +0000
Received: by mail-oi1-x243.google.com with SMTP id b3so18615455oib.13
 for <linux-riscv@lists.infradead.org>; Tue, 26 May 2020 06:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tycho-ws.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=O/mpBidl5KzS3rb4PN7X5hauHHU7Bj8b6nZgC1/NWhk=;
 b=GnCtndUVy9LXPImyl75neJ+jKPenDwGSBzI5wi9Oupoa71QJYg66ApHZlHdNhNqlgy
 73fUpZKffs4nxyLXWo4AcoQ7TaKyZfB3C1YRnqj23bBTLf4ZIjr9IAoEZaVOhefzcw5V
 4Nr1gfDuDReGGRjR2a4ug8DRBr82VyLb6aBLMegD2COiYcLyJrzPxVENMC1icbLN2gnF
 Yyk7GFG5TOmV1hv6DdJtjdn0cgKHCEYGGfgNkhTcQ5ILYtzXfPvauig/hRpTL+x8Gn72
 rzYvRjHYasBDGYGGMgrsXf7GxZDjm02lD21vi35teUx/hom9swlx7xtb/R5F1dRF1CnM
 tyGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=O/mpBidl5KzS3rb4PN7X5hauHHU7Bj8b6nZgC1/NWhk=;
 b=gCyICUKo/U8f1s93tOSPtwjQCWSiYSLI2DYk7euor/5sgy/V+NlHPB3OUdXdvIyzPg
 hD07Nd61NiCCPsRSnWN7TDAW9lsNU56Ow16jveey4dF86y9/SaG0PljBSGm9xszMeKg+
 MZd3DXJE4w45WMVtDyXIofUHjOYzcDbCTqgBx498DMa0MMIjJ8chNrLC2uHY4gRuCxyg
 6Ua0q9l04aSkF91Udw7s9oGsicP+XKteLpcFgvPl39dXTZz5Q510C04Wfc+D4ahxqffO
 6E+pChANDeCUmeJ0x8VzWwPoGMHoALltkQYctNStxnMFuEynzL2RajxeHh9LUjQpMQBj
 ZbXQ==
X-Gm-Message-State: AOAM5304BgzQGEpg98nVWMgPJU+sR5fGYFsAK7305kqL+I8ZduXGUU9i
 bb/coGkX9Tx4METeqoUepuyX/g==
X-Google-Smtp-Source: ABdhPJzM4bXY4Fn1US8uCCmfKrf9dXlosFeANunbNktVL8MAc+7u6vkcJU24xkN0MejT4xOOpe0qwA==
X-Received: by 2002:aca:4f4b:: with SMTP id d72mr14274781oib.68.1590500313445; 
 Tue, 26 May 2020 06:38:33 -0700 (PDT)
Received: from cisco ([2601:282:b02:8120:e9d7:5ec6:88ea:b4a1])
 by smtp.gmail.com with ESMTPSA id g13sm3306oop.31.2020.05.26.06.38.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 06:38:32 -0700 (PDT)
Date: Tue, 26 May 2020 07:38:30 -0600
From: Tycho Andersen <tycho@tycho.ws>
To: Guo Ren <guoren@kernel.org>
Subject: Re: [PATCH] riscv: Remove unnecessary path for syscall_trace
Message-ID: <20200526133830.GO2605652@cisco>
References: <1590416306-66453-1-git-send-email-guoren@kernel.org>
 <20200525143648.GM2605652@cisco>
 <CAJF2gTS4gM39KWuksRRT9ONPhbhYuN9r1oOP_qRT8KvDga4vyA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJF2gTS4gM39KWuksRRT9ONPhbhYuN9r1oOP_qRT8KvDga4vyA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_063837_795090_EAF37FCF 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Guo Ren <guoren@linux.alibaba.com>, keescook@chromium.org,
 Anup Patel <anup@brainfault.org>, palmerdabbelt@google.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 08:29:45AM +0800, Guo Ren wrote:
> Hi Tycho,
> 
> On Mon, May 25, 2020 at 10:36 PM Tycho Andersen <tycho@tycho.ws> wrote:
> >
> > On Mon, May 25, 2020 at 02:18:26PM +0000, guoren@kernel.org wrote:
> > > From: Guo Ren <guoren@linux.alibaba.com>
> > >
> > > Obviously, there is no need to recover a0-a7 in reject path.
> > >
> > > Previous modification is from commit af33d243 by Tycho, to
> > > fixup seccomp reject syscall code path.
> >
> > Doesn't this suffer from the same problem, though? a7 is clobbered, so
> > the -ERESTARTSYS behavior won't work?
> 
> Look, the patch only affects the path of ret_from_syscall_rejected,
> and there are two possible paths:
> 1. ret_from_syscall_rejected->handle_syscall_trace_exit->ret_from_exception
> 2. ret_from_syscall_rejected->ret_from_exception
> 
> All the above skip the check_syscall_nr and ignore the current a7, in
> the C function they use the pt_regs in the stack to get proper reg's
> value.
> 
> For the -ERESTARTSYS, we only process it in:
> ret_from_exception->resume_userspace->work_notifysig->do_notify_resume:
> do_signal & handle_signal:
> 
>                 switch (regs->a0) {
>                 case -ERESTARTNOHAND:
>                 case -ERESTARTSYS:
>                 case -ERESTARTNOINTR:
>                         regs->a0 = regs->orig_a0;
>                         regs->epc -= 0x4;
>                         break;
> 
> All above are done in pt_regs and when returning to userspace, a7 will
> be recovered by restore_all in entry.S.

Yes, thanks for that explanation.

Reviewed-by: Tycho Andersen <tycho@tycho.ws>

