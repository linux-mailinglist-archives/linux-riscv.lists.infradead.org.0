Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 969331B4BAB
	for <lists+linux-riscv@lfdr.de>; Wed, 22 Apr 2020 19:26:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xCBiL4UeKrv7hAKUKJgAhkl/9W+XzwM+RZ7hgiggjLA=; b=pvQIMOJztmuukfg0d3o3icLkO
	ppS3mlmJWztc+fPXYyLDpQk7F69nB0ywM/p3v+/61GDMsAhAoEYEyIRAyfOCTvrBQecfvSAWZv7S4
	R05WP4XZIa+pDeyLWkuLtrRNl5No/yr+qB4TXAKwFIIFnL/squYJcVRFPIKiW4Gn+R5/J/rAiQli4
	w//chXeZqPWvgI9zhjjD/cAii5xXyB8xi5sHdeKFEFacHgGvH8+OKImueavDY0YyeSPpYa9J09CW/
	ThwGimgIgtl+CeAD/GFTr0ZFay96vxCfnmH6q6c4ixxsmcUiF9cDpKY5SiQOO4o5huJ08u+zeZgF0
	9ylMuQQfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRJ8S-0007NB-C3; Wed, 22 Apr 2020 17:26:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRJ8O-0007MD-UL
 for linux-riscv@lists.infradead.org; Wed, 22 Apr 2020 17:26:06 +0000
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
 [209.85.166.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 904AC2098B
 for <linux-riscv@lists.infradead.org>; Wed, 22 Apr 2020 17:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587576364;
 bh=xCBiL4UeKrv7hAKUKJgAhkl/9W+XzwM+RZ7hgiggjLA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=OR8qtC+sAwprVmhowaRIZpLS27rtT8PE0VCGE2PJtkAU2z+cYEmQMD24DVQTnYRbx
 VmvWdTi5uurvMkkiKUVOP48yivOwotOobsc3mngIaMNPbhv7h06FX4/LotgOrelpe+
 1jFlc/LiaxwUnkO6CaQ+0re8Mbw6EHQZVEdFfQOA=
Received: by mail-io1-f46.google.com with SMTP id p10so3250826ioh.7
 for <linux-riscv@lists.infradead.org>; Wed, 22 Apr 2020 10:26:04 -0700 (PDT)
X-Gm-Message-State: AGi0PuZHXw+j1c61KmFBhtO012mp6a1DtNTjPFOcPmDnc7i5qudn8Js5
 rNz2nO0ZKoyC7/qehVfjQX6rnhxXPTD4zozKJMw=
X-Google-Smtp-Source: APiQypKgnUrxsoKaubXK1VqoevgVi/hWnfek7JkKhHrnbkHUsrr60pTcGH2Q0pqPhP6G2yqnoPOpaAi1zdTCcoFFkEM=
X-Received: by 2002:a5d:8b57:: with SMTP id c23mr26587932iot.161.1587576363980; 
 Wed, 22 Apr 2020 10:26:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200422172414.6662-1-ardb@kernel.org>
In-Reply-To: <20200422172414.6662-1-ardb@kernel.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 22 Apr 2020 19:25:52 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGswTWFggax=xV8d6VSpWm9FnLQSLt7E+67L6dbmYEOpg@mail.gmail.com>
Message-ID: <CAMj1kXGswTWFggax=xV8d6VSpWm9FnLQSLt7E+67L6dbmYEOpg@mail.gmail.com>
Subject: Re: [PATCH v5 0/7] Add UEFI support for RISC-V
To: linux-efi <linux-efi@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_102604_995573_07EC8FCE 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Atish Patra <atish.patra@wdc.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 22 Apr 2020 at 19:24, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> This is a rework of Atish's series [0] to add EFI stub loader support
> to the RISC-V port. The purpose is to split the code in a way that makes
> it amenable to being merged via different trees during the same cycle.
> While at it, I added a patch to disable initrd= loading for new ports,
> given that it is deprecated and replaced with a method based on a
> special UEFI device path.
>
> My changes are logged in the individual patches.
>
> I propose to take the first four patches via the EFI tree, and expose
> them via a stable tag so that the RISC-V maintainers can merge it before
> applying the remaining patches. That will ensure that both trees remain
> in a buildable state, with working EFI stub support on the riscv branch.
>

[0] https://lore.kernel.org/linux-efi/20200421033336.9663-1-atish.patra@wdc.com/

