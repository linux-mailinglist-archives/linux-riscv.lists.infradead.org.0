Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2FC1FE5DC
	for <lists+linux-riscv@lfdr.de>; Thu, 18 Jun 2020 04:29:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VIAbtmytWe4P0OjbpKgv5Ryn3X/VFHTsnPvYshe2qyk=; b=Bn0CrU0ee5zTHytRvIeHR328s
	89SqO0uySqqcNHF9b5pTHnI/xXBxE8GADqWzEHc39+FS0uNP9nMoPeQva6JSRkuM5azi/be803I3u
	8X2FIPBsXNXEyeZxIQd72iTrItw/aTdISHWGEfcaxOppPUZdMc3d0uMTJSNQ7MpYBonDuj/rwrPmT
	4WwByUN4GUinXcprqzrCFAwoU+YskmUMixKqlO82CH9Qh4cJfG9Tn9HRoXAHVv7dUFD2Ey1tlxZJt
	LNhxOwd8zl+ozMvdodz3qCWasQdKwnzbovu73BDyBMGGnPNHWaWlzoz95lGOx4rRnD2f1KVGlTq9x
	WnV7Gp0aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlkIt-0005Mn-6f; Thu, 18 Jun 2020 02:29:23 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlkIp-0005Ly-Gm
 for linux-riscv@lists.infradead.org; Thu, 18 Jun 2020 02:29:20 +0000
Received: by mail-ot1-x342.google.com with SMTP id m2so3324567otr.12
 for <linux-riscv@lists.infradead.org>; Wed, 17 Jun 2020 19:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VIAbtmytWe4P0OjbpKgv5Ryn3X/VFHTsnPvYshe2qyk=;
 b=Wg8Mr9U92fXHjjgnQ/HWv2MSYJV2hSDYM+VyVpA2AMG0EsZcBN1bdFwNfjKNqodVbv
 kNDjVOAWSQ0NKnAc20FYVKiJZL6v6jDJJUvFq3C3faAk5bKYuypR+Z3YUAfDacTOidpw
 WniKCkYahRbocMs47i4i25oGg3it2IBHQnSd2MyJndgpOKJw0iu4sEungNZ/wqFlN7y3
 CzXlSo6jFNSp/+/zqO4SR6Q/1bO0PsQ+/bAntiRmnhgtt0nXbSIK5jfsWwtxNiW4ObWy
 IwBatQVHAi+vh74ftWl8K6CnesDY9uLqfpg6SPq5tg8BX+4YutfcabW2Up+ozDPah6BX
 7IiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VIAbtmytWe4P0OjbpKgv5Ryn3X/VFHTsnPvYshe2qyk=;
 b=DcmKynKH+pWxa5/nw9JSfhLr9rKQGHkHEGCn2IKHlQ5FTInW1uIMeP7D6fhIEFcW69
 SIaeq7F7dpo59LZ29ooiKgV6/O2Ge9pM5jt9y3ag89VgUlfe7Qg/K6RH7/MJxTvpYhIk
 2fNpuAs/ePc7bdIJnebufFyP22lHI8h54sT1C/HlT/hU7NyxqWcQUWO9gmGmF8Vu0lrg
 JaWn/5E6Q7En0wAZzEmGGuaI5z1JvvohprTaEr4TmC/pF9e2kFFtweavDUo4DjZmVDYV
 iA8sZIs5knuqikSXAbbY+IUxYFQR0AjhatltmiwVNW3Nlfjm+qBBBt9bbTQxpsEgcwKG
 a6RQ==
X-Gm-Message-State: AOAM530DVNNj2RbYGK6UXt3kOv09XoFFtTcnJGV+SBQVv32R+h93IDQb
 L6iYGFuBVEdXZW7NwYeZuQwgsRuXoQicvRU+TPQlEw==
X-Google-Smtp-Source: ABdhPJxDU1T28hAUkIcsmtrPI61nqUdQj6WFuskWwrVZFHaavRqvF0p9NTr7W4KrYrc7/rh6ZC8XiccaiFa2hgoVZBA=
X-Received: by 2002:a05:6830:1e59:: with SMTP id
 e25mr1768564otj.127.1592447355825; 
 Wed, 17 Jun 2020 19:29:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200617203732.2076611-1-atish.patra@wdc.com>
 <CANN689EXQsH3C92fe=QHVEZasWmBiMXPoOB=bRLhK2CP-hdKqQ@mail.gmail.com>
In-Reply-To: <CANN689EXQsH3C92fe=QHVEZasWmBiMXPoOB=bRLhK2CP-hdKqQ@mail.gmail.com>
From: Zong Li <zong.li@sifive.com>
Date: Thu, 18 Jun 2020 10:29:04 +0800
Message-ID: <CANXhq0qtxyx0+4+dVy3c3R2v5DSWaJsFwc7BcwSRGcufoL6eHA@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Acquire mmap lock before invoking walk_page_range
To: Michel Lespinasse <walken@google.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_192919_588740_29F04588 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, LKML <linux-kernel@vger.kernel.org>,
 Daniel Jordan <daniel.m.jordan@oracle.com>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@linux.ibm.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 8:01 AM Michel Lespinasse <walken@google.com> wrote:
>
> On Wed, Jun 17, 2020 at 1:38 PM Atish Patra <atish.patra@wdc.com> wrote:
> > As per walk_page_range documentation, mmap lock should be acquired by the
> > caller before invoking walk_page_range. mmap_assert_locked gets triggered
> > without that. The details can be found here.
> >
> > http://lists.infradead.org/pipermail/linux-riscv/2020-June/010335.html
> >
> > Fixes: 395a21ff859c(riscv: add ARCH_HAS_SET_DIRECT_MAP support)
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
>
> Thanks for the fix.
>
> Reviewed-by: Michel Lespinasse <walken@google.com>

It also looks good to me. Thanks for the fix.

Reviewed-by: Zong Li <zong.li@sifive.com>

