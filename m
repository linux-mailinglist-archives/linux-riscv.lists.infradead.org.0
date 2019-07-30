Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B390A7B5F3
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 00:58:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0xbOVkfJ4YKAl+zMul7tJrAqk6kP2HHOQHewqwj3M4s=; b=BdY0rx7bA8qyv4
	3ObtUSWHNldr4CiytYl3+KThz8W41SiaAwbps7RWIraIJLPTN1T2SqbUw2SHknO97GncCgJ8oR6Lc
	6l8aibWOL48zXCeRiRDtHziuV2zIYWUcGl9CDOcwZ1OlVOmkMsW1D45ISrGFRVaEsqEKRUsa6ntpb
	rR6dGtS/+3uxKn6U2yQV2tGfMCkbDly3K5fxdA2ZxJWi/JHrbvIIygHB3tXv5L9fA2x6txGV6jsvX
	HiJIZxN3xv4/r+35Z0EahWWXu1QhNAGLQlm/MZqKicQjuGgZajgwdvT3IglnYWUk94R0X6V45bH9o
	RSEhWhcI9cjUwRDH43mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsb4X-00074q-KZ; Tue, 30 Jul 2019 22:58:21 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsb4U-00074V-2M
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 22:58:19 +0000
Received: by mail-oi1-x243.google.com with SMTP id w196so27835289oie.7
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 15:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=KRfm4hy/MFFKWXNiJL6XJ0vTMvcV92W3VJ5w2T3yK6g=;
 b=L0KSw+K5lAXwUtfMvGFW5PkwM8L11L2y2HxjIx8uYFJhZLKHIBlKDAf4psYNcAGptC
 gXLfJVKL1zNxuKUm06qIPL4NOwBw3rloNIKDInPPfSLNYAljCfQr3UHzq3yxzsdbRCek
 V7f6gH93h7HkZFYo/FmnRzaaHRLNlz73DVfXhHFr7Zs9FanPepkowJ6YfynVUNrbWXy9
 d5nkiHQYL/FSrdx7IQZRm6xx+RefyEDTQQvxR5dXyKZEVsmCFUTRAtPvNHN9VPkIyTUP
 jElCnqkx23aAjsutHRY3h47swJFOeOIrarkF3xA1LqlZZmWJt7TrAExruQIM4oIqX3hz
 CPMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=KRfm4hy/MFFKWXNiJL6XJ0vTMvcV92W3VJ5w2T3yK6g=;
 b=QHPhyigsEEnl6frYW2p/RWoHUAJl14JBEk4cjJYAv/TICeX0x6CqvZeAS+naLLPMNZ
 A2zVsBexBxKJDLDcRPSsTyAAAPg5j2pSgzDN01V+YrRk1lsx8lLf/NIN3roYRlgghLvG
 BPlbej8R9aAcKSpYdQFujOXla3AmWo8StLSzLt0Z9BsMAKs6c5F931YBGxo2QYZK7+jp
 7e0VzxKspIqt7RukRaxSFk2IkubApJrurRaeR1X+fWNkrlSQnjAM6uswfz1OkFG+qB/G
 53jzAc1UOZcOF1/40iVs60hNQq663lN6yPFPd0fRIersIElkHVn9Cpu5jE2BObOGLcrP
 3d3g==
X-Gm-Message-State: APjAAAUan6v546w71TfVFXzN5l0A19ZNzHZ1WTwto0MVSJhUIKeeTSCg
 ttAx0OovR2RgLNTclCBHutWmhw==
X-Google-Smtp-Source: APXvYqwYd9jZsg3WAi0A/1dLmsXwqtOlVeJq5lzjxtkCxX24GZiBqPoOrUl3Ao3GWeR/60TVSnsOyA==
X-Received: by 2002:aca:b208:: with SMTP id b8mr36981187oif.98.1564527497206; 
 Tue, 30 Jul 2019 15:58:17 -0700 (PDT)
Received: from localhost ([2600:100e:b005:6ca0:a8bb:e820:e6d3:8809])
 by smtp.gmail.com with ESMTPSA id b21sm23167935otp.80.2019.07.30.15.58.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 30 Jul 2019 15:58:16 -0700 (PDT)
Date: Tue, 30 Jul 2019 15:58:13 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Anup Patel <anup@brainfault.org>
Subject: Re: [PATCH 3/4] RISC-V: Support case insensitive ISA string parsing.
In-Reply-To: <CAAhSdy1pqZP+M27idvfOB8eB8zhPD_7hx9S60FpOmWRHs-R2qg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1907301544560.4874@viisi.sifive.com>
References: <20190726194638.8068-1-atish.patra@wdc.com>
 <20190726194638.8068-3-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1907261346560.26670@viisi.sifive.com>
 <a8a6be2c-2dcb-fe58-2c32-e3baa357819c@wdc.com>
 <alpine.DEB.2.21.9999.1907261625220.26670@viisi.sifive.com>
 <MN2PR04MB6061790AFE4E0AAA838678028DC30@MN2PR04MB6061.namprd04.prod.outlook.com>
 <alpine.DEB.2.21.9999.1907270043190.26998@viisi.sifive.com>
 <CAAhSdy0Eycc0ORSnh6LJeC_D_x9yLOkoc7OkPNuN6qOcZEGVWg@mail.gmail.com>
 <alpine.DEB.2.21.9999.1907270108420.26998@viisi.sifive.com>
 <CAAhSdy1pqZP+M27idvfOB8eB8zhPD_7hx9S60FpOmWRHs-R2qg@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_155818_142172_CEEFA14F 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anup Patel <Anup.Patel@wdc.com>, Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>, Atish Patra <Atish.Patra@wdc.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, 27 Jul 2019, Anup Patel wrote:

> On Sat, Jul 27, 2019 at 1:46 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> >
> > On Sat, 27 Jul 2019, Anup Patel wrote:
> >
> > > If your only objection is uppercase letter not agreeing with YMAL 
> > > schema then why not fix the YMAL schema to have regex for RISC-V ISA 
> > > string?
> >
> > I don't agree with you that the specification compels software to 
> > accept arbitrary case combinations in the riscv,isa DT string.
> 
> DT describes HW and HW follows RISC-V spec.

The RISC-V specification doesn't specify anything about how the DT data is 
to describe the hardware.

> Enforcing software choices in DT YMAL schema is not correct approach.

That's the point of the DT YAML schemas.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
