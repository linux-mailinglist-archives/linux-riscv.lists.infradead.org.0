Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B634F28624
	for <lists+linux-riscv@lfdr.de>; Thu, 23 May 2019 20:46:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ikdGRG/aq2pV2fH3HX/NckP+2fb177OQFazLOyD7sZo=; b=uUG5ZL1usVhb47
	eREpPqivTIjD/hsEq6IWCTx8p9Inr0l/MncKEJQ4Ov8idRO6SnTEeKAj7ftrhqQ3BKCFesuQmsa7c
	N+H8RcghUQiZT8UXj/bJjtyAsupq6BFBTdIKtez1iDOiI7nNH5k2j+ROT+bsGUiF81nDfAjtnsp/m
	a1E0Dix77Oyy4OzGiUbNyKk1SbZrA9eHWdpmzyDEU72q9Wd8W2cD54aeF9AsIoISoitrZ9+4GL8fK
	9u3dlrglCeHvFCPWQFpnAN3D3ZteKy0JGAEoGa9T5x9F/2taKNnzhF1DWNpKmnhhu7TQxLF5fk09q
	jeTxcOTAMbJ7fNImJOLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTsjA-0000TA-Tm; Thu, 23 May 2019 18:46:08 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTsj1-0000Kj-Ki
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 18:46:00 +0000
Received: by mail-io1-xd43.google.com with SMTP id f22so5679943iol.11
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 11:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=3G9PpELgaCmAJoi9f5MwH9qwBPA+aTo8fh9Mg5j+bJQ=;
 b=EN2kqTA/l2KnlIeXSThqN+mWXzy2R6rUf6wLv6z2ajJXoBvnTmwwl1EYQ8DqPSNZyF
 S3oWaKd5a9lrP3pNV6pr4Uw6QvdoPFhx2O6QmceDZGSHlb8hcW+hiF74BHCcm/Lue/Ba
 2nRBUg9J0vUQDXk+Y4iDZZpeC0UOUpFJirbklqPVnG9SAw6OGs146oo3YsUlQcdGQW43
 aPqi2miXnykRI2k5XFeDd0E31p3BmH4Q9kHpCdYNn/Wrkgz0fIjOAj1z1R8Mu5vqLp9X
 dZeNddqSt6sopTWvgG2ksVvJklOPBzkKofZrcRAmbl+RY95kAC5vzcMzzag3tHsu41uD
 06Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=3G9PpELgaCmAJoi9f5MwH9qwBPA+aTo8fh9Mg5j+bJQ=;
 b=JNso/j4NVtT7FoxiOm1zN8jkvbYRgk5DUB0yjaYfWLLFXfrRNLH/raX/Vq4Go6x/LY
 qWbfvpUXL+x4cVqL5NHjTchKuFvplvkPvGLkf4HlQx/p8vEJzlxk0rrCqWghYxCOgEq/
 64WiI4MJpK3vrcRI8fkH+BiN/5c9wd62SRTwQew1hUrIaGeytnN71O/nMZqFGfzwsFlp
 zV41BeMnltgcm6kkexP39jJ6Z8MNe8POFQt2M+yfCOOPkUz/V1ezVImZeHjEWeYt2SRW
 NJMmGDlDS1gtvB/GHcUYeHDfftoFHeGaNu1VgQM17f6Wtg8M7EfuMuKG8vXmzWVnwTLi
 hafw==
X-Gm-Message-State: APjAAAWPjRcSJtfXFqSje5Lo1ONlIDaYyszhJ32ABLV72LmCDhbAHfE/
 S/Zt6HOY/LnqHSXCI50eKKop8w==
X-Google-Smtp-Source: APXvYqzSIsI32XyZv64ts96aDvkx1BOYtAR2Vrh1m1dywnsC/eLbNmH+vkhQiYp3X4lNtAab58hZyQ==
X-Received: by 2002:a5d:9144:: with SMTP id y4mr46147037ioq.30.1558637158524; 
 Thu, 23 May 2019 11:45:58 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 81sm144991ity.38.2019.05.23.11.45.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 May 2019 11:45:58 -0700 (PDT)
Date: Thu, 23 May 2019 11:45:57 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [v2 PATCH] RISC-V: Add a PE/COFF compliant Image header.
In-Reply-To: <d7ef1d58-2c3f-ef58-b6aa-bb7ccfe162f6@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1905231145250.31734@viisi.sifive.com>
References: <20190501195607.32553-1-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1905131522370.21198@viisi.sifive.com>
 <a498967c-cdc8-637a-340b-202d216c5360@wdc.com>
 <alpine.DEB.2.21.9999.1905131704371.21198@viisi.sifive.com>
 <a3eb8e32-5344-801e-03ef-98107ed13130@wdc.com>
 <alpine.DEB.2.21.9999.1905131735450.21198@viisi.sifive.com>
 <bb7f36bd-d614-b235-7100-3d965f92afc8@wdc.com>
 <alpine.DEB.2.21.9999.1905160833030.9104@viisi.sifive.com>
 <d7ef1d58-2c3f-ef58-b6aa-bb7ccfe162f6@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_114559_691401_9A932547 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "trini@konsulko.com" <trini@konsulko.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Zong Li <zong@andestech.com>, "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "merker@debian.org" <merker@debian.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 23 May 2019, Atish Patra wrote:

> I have sent out a v3 incorporating most of your suggestions. If ARM
> maintainers agree, we can move both the headers to a common place.
> 
> Just FYI: Marek also suggested to add unified support Image.gz for both U-Boot
> & RISC-V in U-Boot. I am working on that as well.

Great - thanks very much.

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
