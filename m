Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B83130C96
	for <lists+linux-riscv@lfdr.de>; Mon,  6 Jan 2020 04:38:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YgXi9AorULzlqYHkJqrLN+bNa5jhwj0X+iafrXMCNW0=; b=B9b5wYzrS02j5WDPuEaGTLniB
	OPd2r3YfPiZONRLp1SKcLmobkTYU0lp5nZi5RLzzmQUsgvrNwBwggPuPAc/PtHZVvoMnaa53nWzR/
	yPkp+/wKRqnxy70dAjh08Wg3T9XqxY+PaeXgY6acTVfvWrd37QK+1zHGb2OsXDFrpLrv9lgQirdml
	oydD4JkJF5fkEb+jNvqdb9z17PY2zRaUN0PmEu7M41fV/k37utGyouxtxS76Ic+YEEVybVL5OQeiX
	jxXKv9ONgh59L+30FhXefAn+bGtuov6SME1537wBXy0j1wwq4bogVP4bfhJWBhc2wxENKVCcMDQiR
	DDMsFl7rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioJEA-0001na-2v; Mon, 06 Jan 2020 03:38:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioJE4-0001n0-V8
 for linux-riscv@lists.infradead.org; Mon, 06 Jan 2020 03:38:47 +0000
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 35F072465E
 for <linux-riscv@lists.infradead.org>; Mon,  6 Jan 2020 03:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578281924;
 bh=O3Dvl8/RPqanNc/oF5iRxca2DGo6j2tFFgB+VTxc/CU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=F4PY9b+Me5Lbem1Xg2FIpqhMxsBLj6rzozZaT/R9ffJLm3LMxbXk5R5OrzbgW/2WD
 J0r0ZUM1rHvSeZKQiVXmAtWIi1aTsjJkyk69Yqc/Cw2hRW/3Q2t2I+q/9cKkbLLESb
 3h43ovSpw5qidcDjrzJQ3WzwhctKGTRTbXQ9hPdY=
Received: by mail-lf1-f48.google.com with SMTP id y1so35446518lfb.6
 for <linux-riscv@lists.infradead.org>; Sun, 05 Jan 2020 19:38:44 -0800 (PST)
X-Gm-Message-State: APjAAAX47PL5JbbQv5y/VPRGHf60J8jvJr5ZFRMw5rSa2BAkcjgnyLq/
 mVRk0KMSZuH45D8AoyzNs4TjDwrY1XpUtJcfa+M=
X-Google-Smtp-Source: APXvYqwfABJmKgGEdlXcyjmnMqo9GN8Gpupb78k3NfRvlm0T8E/FA+jpdPW8sh2OqqkeHCTL1Rfds477FHZCZ64x8Uk=
X-Received: by 2002:ac2:4476:: with SMTP id y22mr55934808lfl.169.1578281922348; 
 Sun, 05 Jan 2020 19:38:42 -0800 (PST)
MIME-Version: 1.0
References: <20200105025215.2522-1-guoren@kernel.org>
 <20200105025215.2522-2-guoren@kernel.org>
 <20200106024515.GA1021@andestech.com>
 <CAAhSdy2N1v20g-WGo99Utrvhj4NXZeFP-is1jqCs9DE_Zs2VKg@mail.gmail.com>
In-Reply-To: <CAAhSdy2N1v20g-WGo99Utrvhj4NXZeFP-is1jqCs9DE_Zs2VKg@mail.gmail.com>
From: Guo Ren <guoren@kernel.org>
Date: Mon, 6 Jan 2020 11:38:30 +0800
X-Gmail-Original-Message-ID: <CAJF2gTQ8-b2w7-v1giYN_UYcNMaeju8yv0ksUu2=g5YJtk1rdw@mail.gmail.com>
Message-ID: <CAJF2gTQ8-b2w7-v1giYN_UYcNMaeju8yv0ksUu2=g5YJtk1rdw@mail.gmail.com>
Subject: Re: [PATCH 2/2] riscv: Add vector ISA support
To: Anup Patel <anup@brainfault.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_193845_041299_0ACFA6D9 
X-CRM114-Status: GOOD (  18.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Alan Kao <alankao@andestech.com>, Arnd Bergmann <arnd@arndb.de>,
 Vincent Chen <vincent.chen@sifive.com>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 linux-csky@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Guo Ren <ren_guo@c-sky.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>, Zong Li <zong.li@sifive.com>,
 Bin Meng <bmeng.cn@gmail.com>, linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Thx Anup,

The purpose of the patch is to talk about abi for linux & libc.

The most confused me is how max vlen (128/256/512/1024 ???), we should
put it into sigcontext. I need people's suggestions, thx.

Anyone help to review the patch are very helpful and we could
co-developed together, Thx

On Mon, Jan 6, 2020 at 11:00 AM Anup Patel <anup@brainfault.org> wrote:
>
> On Mon, Jan 6, 2020 at 8:15 AM Alan Kao <alankao@andestech.com> wrote:
> >
> > Hi Guo,
> >
> > On Sun, Jan 05, 2020 at 10:52:15AM +0800, guoren@kernel.org wrote:
> > > From: Guo Ren <ren_guo@c-sky.com>
> > >
> > > The implementation follow the RISC-V "V" Vector Extension draft v0.8 with
> > > 128bit-vlen and it's based on linux-5.5-rc4.
> > >
> >
> > According to https://lkml.org/lkml/2019/11/22/2169, in which Paul has stated
> > that "we plan to only accept patches for new modules or extensions that have
> > been frozen or ratified by the RISC-V Foundation."
> >
> > Is v0.8 ratified enough for now?
>
> As-per the patch acceptance policy, we cannot merge it now (just like KVM
> patches) but we can always review and get the patches in final shape
> by the time spec is frozen or ratified.
>
> I think we should continue with the patch review and get this series in
> good shape.
>
> In fact, having this patches early on LKML is very helpful for people working
> on RISC-V vector extension implementation in HW. On this line, this a good
> contribution coming at the right time.
>
> Regards,
> Anup



-- 
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/

