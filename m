Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E01619B4F2
	for <lists+linux-riscv@lfdr.de>; Wed,  1 Apr 2020 19:55:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VPhXKydbZTzb7I+C+zryLnD0ATKx+Di6aiNrDJCaDhA=; b=UglrwQOmPP7KMwmaJciuy5ylo
	G6YSfB9pvW7aPslGwHgPnNo9wWt8apkql4FAvMPyBqI5LNeLZtfldiHeWE+rnZdCfzh9Z9qVGFal2
	0wCVGTF2BGwtPryYH2meNYTtXXGj5KQeypOQ/91Pc2QsZCxNzCsGtiU8jvtk5ZtGrH6MBgPOvbwtE
	tdwT6PUgsNBjkgP2cpNkZ3Q5Yn93FJapq+Pfxr+xSX+Jo8C9xYtzKdF6vLthua4nJiKt4ErZ+3TZQ
	P+Q6YXzgKWXa9Ieoo0ROS+XgWjyqtVoRzZBUY0NBLuwBXOh/+yWGXi7oBRfmUjzUkiJKFRJhjoWgZ
	u+RUx1m7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJhaB-0001wt-5C; Wed, 01 Apr 2020 17:55:19 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJhZy-00083F-4Z
 for linux-riscv@lists.infradead.org; Wed, 01 Apr 2020 17:55:08 +0000
Received: by mail-lj1-x243.google.com with SMTP id f20so451786ljm.0
 for <linux-riscv@lists.infradead.org>; Wed, 01 Apr 2020 10:55:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VPhXKydbZTzb7I+C+zryLnD0ATKx+Di6aiNrDJCaDhA=;
 b=M+QypHguEJ+ZMo+VHGYpLGxawGiHDBkco/puBCZqqPu/zhtRhenLN2QEQy2+51iwhW
 FUa5RF9BfBttveXSab6JiAT4VD3oa6TF1usIdiMhbKEOQnmuoBz4j27NAZUPwhCtgB86
 iWG8hEWzyo5PFSuKDMJ1HXA2WUD31oURwofYZygB5KhGIsqh02SvUdYgeXNjoBI191Z+
 TsyVnng4v5FYsb9Y9u8B6UgUY+59ocfyabr5sW07sFX+73/kI3BmXlY2LqK/bACMUgrE
 U2gs8+sEBqY9PkpcEPt+h0iaa8OvAVaCcDrMeSFY1PlCNiGbCeW0Jegv5FfEHLJi75jj
 ZKvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VPhXKydbZTzb7I+C+zryLnD0ATKx+Di6aiNrDJCaDhA=;
 b=sO9OLiVwfUBD/j7bdW5ryCnAXGCi5h0EOu9z5EKJBHYPbwSpVGI9Ju5pFDDBHNGcse
 0NYyf5Jl20zYUOUW77znBykb5NEqcdr0Y6FQXchvDmPPtveuofxwDPGNsp2aw67TaAx4
 BMuSVAD5Ym7LCXMlP25+2COtE7y/aP6f4QpYYOnrG9gSVVIuLB0C1sFQ5cSIDNK1Cj01
 eo3+6E2rqs4MQYeOnaIAKMcQadL8WZ3xX4KGSiZIJtZ/pScKEJW3PMxR3HyULXQDd/oX
 PFA6N2DI8gF++esgaEaT/npn2spjR4Q4DQBmku4xAaHRSYnqNmRYpZL0sNzck51zTCOy
 9lHg==
X-Gm-Message-State: AGi0PubzvJ1WHHCqOkOUfor1oHY0/wkS6lO8GQ92G3k+b2MJXSs+d+K+
 hrDyJa0e1tgCnHNZgYZAOxplosd7iSFHsKMJrdg=
X-Google-Smtp-Source: APiQypIpgms5ea8R9NiilNYlyp4N+c7045zV7nm6sgzoRVphN287Fch6MhCQurEOr65YijyBeyXpBR00mxUsZHWSeCI=
X-Received: by 2002:a2e:854e:: with SMTP id u14mr13089773ljj.182.1585763702432; 
 Wed, 01 Apr 2020 10:55:02 -0700 (PDT)
MIME-Version: 1.0
References: <48e10b3d-12f3-a65c-8017-99c780c63040@gmail.com>
 <BYAPR04MB581671F46D3FE67FD3C8B2B7E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
 <bd74c841-2447-2f11-f924-a501230b3927@gmail.com>
 <BYAPR04MB5816ED294439828E562EB085E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
 <CADnnUqe3AbTStJg9LS4qupH-OnBDGjuEFbnX8EXW8MUr4kwoGQ@mail.gmail.com>
 <19e78a77-4b7f-a057-eb6e-7384f3fc67c1@gmail.com>
 <CADnnUqfSq5sNXMQLktU0R_XLvYrf00nqMG5UPkTwaeL-Cy1m_A@mail.gmail.com>
 <8108cb8e-a909-24b0-f1c4-24a5bebf4e65@gmail.com>
 <CADnnUqenadntSrngNGjnu40inxZWK1Nm3T64BnyY114hEwC_Og@mail.gmail.com>
 <20200219090612.7onbaoygy6waumnw@aurora.visucore.com>
 <20200222190731.27vulbrqj37obeq6@aurora.visucore.com>
In-Reply-To: <20200222190731.27vulbrqj37obeq6@aurora.visucore.com>
From: Drew Fustini <pdp7pdp7@gmail.com>
Date: Wed, 1 Apr 2020 19:55:31 +0200
Message-ID: <CAEf4M_BSCjAkUUWERP6ak7nzseqae0ZdWDA0_hY5wwhCfFFKFA@mail.gmail.com>
Subject: Re: [PATCH 08/10] riscv: Add Kendryte K210 device tree
To: "Wladimir J. van der Laan" <laanwj@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_105506_282995_8E7CCB21 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pdp7pdp7[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [pdp7pdp7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Carlos Eduardo de Paula <me@carlosedp.com>, Anup Patel <Anup.Patel@wdc.com>,
 Damien Le Moal <Damien.LeMoal@wdc.com>, Sean Anderson <seanga2@gmail.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Feb 22, 2020 at 8:07 PM Wladimir J. van der Laan
<laanwj@gmail.com> wrote:
> > > > So the LCD connector is supposed to be for a ST7789V controller, but
> > > > there doesn't appear to be a driver in Linux for it. I don't have an
> > > > appropriate LCD screen, so I will not be able to write a driver.
> > > >
> > >
> > > Actually there is a driver and config DRM_PANEL_SITRONIX_ST7789V, in
> > > gpu/drm/panel/panel-sitronix-st7789v.c and also FB_TFT_ST7789V and
> > > CONFIG_FB_TFT_ST7789V with the driver a in
> > > staging/fbtft/fb_st7789v.c. Might be easier :)
> > >
> > > Weird that the Kendryte SDK refers to the LCD as NT35310
> > > (https://github.com/kendryte/kendryte-standalone-demo/tree/develop/lcd).
> >
> > I remember checking the datasheet for both a while ago and NT35310 and ST7789V
> > seem to be more or less compatible, with only register differences
> > for more obscure functionality.
>
> I just stumbled on this:
> https://forum.kendryte.com/topic/68/a-guide-to-adapt-kendryte-kd233-kpu-demo-to-sipeed-m1
> under "LCD Driver".
>
> So it looks like the K233 uses a nt35310, while Sipeed M1 uses st7789. This is
> a likely explanation for them mentioning both chips in the SDKs.

Hello all,

I have the Sipeed MAiX Go and was wondering if any has made anymore
progress with the LCD.

Is it reasonable to try to use a tinydrm driver to put basic
framebuffer on the LCD?

(so we could see the adorable Tux at boot, etc)

thanks,
drew

