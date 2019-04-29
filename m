Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C31EB48
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Apr 2019 22:02:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wjyXdWb3uOOcOHDMJyJamTHMWXZ6YI7t//z8r+NjdGA=; b=XXAfyk4az8E896
	mSLGQtYIAs8wkhXbxqt0QywSiiolRhcEuUID4uUoR+eRKpRg2mor8GUnli++SwCMwy/YsiGEhKoCB
	ApBLD4H0ydmuRH6TdsJlrYewHAznQq3TUeZcq/CGLMI/SoMJMcnjiD8+SYf6rtm8vGXbPCKGE5o3L
	RSsnbpL+sthM2WFtBa5sKIuOJRDxmKvJHHlUKxI5gHNhQnFChvGoSSDMIMGZjXQPVRzP1NYX6Wxue
	WmV2mOcsTmSB5AYGBZGPza/ts8XGACsJ3rf9gx4wfnh5t0wGbLwHSCaAn+73E9id+1R6G/IRiiupy
	TMbaBCIYI2UXJswdXMXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLCTr-0005Lx-Vj; Mon, 29 Apr 2019 20:02:28 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLCTn-0005L9-GH
 for linux-riscv@lists.infradead.org; Mon, 29 Apr 2019 20:02:25 +0000
Received: by mail-it1-x144.google.com with SMTP id z4so1029867itc.3
 for <linux-riscv@lists.infradead.org>; Mon, 29 Apr 2019 13:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=d5+AR4ZQ6S8Je85I3GXhGfH5pQCSFdPGrCwlud052ps=;
 b=XRN9VSnXHB9YOZLhHV+j78/FmX9TQONi+10x6wv8ySgEM5Q3gC4vGptmW/bxkiWCCY
 rbcj40eh19ktqbvfBBaI7hdAi4X7nV/L6e/YdSS+D+EnzRxv2YhH95gH9aH/gutPNhO4
 RJsx+Ng3drdHuugTlgCMR2KJLCwrOUInFIlaTNKgT+fEPSEflUTe81/58oCezp2WB53J
 Tdx9M6r9uvjF5dJT3y8Nur7B6mBnp1vd2obduvs8Sw5WW76/Khxa+GnxKWThbOxThEYI
 WW9SEpLLQwn3CoVL/FBE6o4G0S4hGvPjxIUy76C2Ys9mrLSEiwClLRCuBLFDnHirvptg
 mgMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=d5+AR4ZQ6S8Je85I3GXhGfH5pQCSFdPGrCwlud052ps=;
 b=Tioy9f++UHImH7DYGuiSmlapykjhhQ8lDJRPRzNwxFazgySVswjwK4A4lUX7DwNBSP
 N7f2hUfwI1oppT6ROnAQeNlyTcGw6BvSx79Qpd0kk8j+t9P/I6lUHN651SCmSdc5TIFe
 VmPGMsDqTO2IAdmIINyldX4ljPS4x6OgOGLXXDaa6HYZp5sYsLCjJ2u0RfYRZyramzpW
 +1KgPvgtXyGl1/8lzqNcjaVpbTjVrqlfFaSWSXibz625CX0/DDkJqcPQL+pCx0cE27BN
 6L8iAXugBU2rC3wohFnA8X0eGt6BUnhBWsf9nLAKK/FhI3VPLIJf0IQDIlBokjQ1w4BK
 94ng==
X-Gm-Message-State: APjAAAWirmXhtVrsH1tcZ/90ILOPdV18pT9mk5oSVLpGCQgtbRSStSFR
 HXYGai2M81NiD5ZwL2wQQInoBQ==
X-Google-Smtp-Source: APXvYqw118+txrOO593MhkfuosJ78cNcNeAwZ0b8WAls8UIMDjjD/RyZt63kf1zMwrwLeq+0e7uoZQ==
X-Received: by 2002:a24:1f06:: with SMTP id d6mr645397itd.11.1556568142581;
 Mon, 29 Apr 2019 13:02:22 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 v25sm7723994ioh.41.2019.04.29.13.02.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 13:02:21 -0700 (PDT)
Date: Mon, 29 Apr 2019 13:02:21 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Anup Patel <anup@brainfault.org>
Subject: Re: [PATCH] tty: Don't force RISCV SBI console as preferred
 console
In-Reply-To: <CAAhSdy1nVFCwiP6vyy9i2f+S2WxLodmdwpwUKZUHYz15YfR64g@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1904291254300.7063@viisi.sifive.com>
References: <20190425133435.56065-1-anup.patel@wdc.com>
 <9a8be7ef-e62e-2a93-9170-e3dc70dfb25f@wdc.com>
 <20190426062133.GA28529@infradead.org>
 <CAAhSdy1nVFCwiP6vyy9i2f+S2WxLodmdwpwUKZUHYz15YfR64g@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_130223_553167_75A9FEEC 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Palmer Dabbelt <palmer@sifive.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <atish.patra@wdc.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Jiri Slaby <jslaby@suse.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 26 Apr 2019, Anup Patel wrote:

> On Fri, Apr 26, 2019 at 11:51 AM Christoph Hellwig <hch@infradead.org> wrote:
> >
> > On Thu, Apr 25, 2019 at 09:41:21PM -0700, Atish Patra wrote:
> > > Do we even need HVC_SBI console to be enabled by default? Disabling
> > > CONFIG_HVC_RISCV_SBI seems to be fine while running in QEMU.
> > >
> > > If we don't need it, I suggest we should remove the config option from
> > > defconfig in addition to this patch.
> >
> > I think the whole concept of the SBI console is a little dangerous.
> > It means that for one piece of physical hardware (usually the uart)
> > we have two entiries (the M-mode firmware and the OS) in control,
> > which tends to rarely end well.
> 
> I think the SBI console is only useful for early SOC bringup and early
> SOC debugging when most drivers are not available in upstream
> kernel. It cannot (and should not) be used in production deployments.

Usually the primary use-case for an abstract console interface is for 
desktop and server users.  Usually Linux distributions want a hardware 
platform-specific bootloader or BIOS to specify and control the console.  

Originally I suspect this was implemented in the SBI for semi-hosting 
purposes, but that's no longer really applicable.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
