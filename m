Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A568483E4
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 15:26:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GaUzCVtwLOkcFRilooMOg4K1p+0lK5fv7mqtIE6K/uk=; b=FzEumShhNcmmxX
	vOLaIPg+q4zbK4hrTkAVhiKJWwhs9H+OzxlVWwKAN3QMD2ujPDPrDSlcVIGm+ys9IYOZ7jfj/ZOJj
	NqBDZtcIWdxToeAajkzL3blVRv6CCUi+pIOlRdFwWohy3lhSuoWssTnaQnRunbF3wfsZ0dEwXDcJL
	mOD1tEh2AVeN3L3bFQcpOGrbtFF/0iWrj02Z7xjSgcbhXYKt+xY/RzH8YA9CYQnZbtZZLmQEE5dRb
	6fLg0JN4xiMYKuMCLmf58K11sbSxRxLVOfCDZYhg7mMz+wdLLq1wKHIhMm315kpUdnimzFkQSOwvo
	/PCPykDdNdXvZFVSdpEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrer-0008Cn-TM; Mon, 17 Jun 2019 13:26:49 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcren-0008Bn-AH
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 13:26:47 +0000
Received: by mail-ed1-x544.google.com with SMTP id a14so16128381edv.12
 for <linux-riscv@lists.infradead.org>; Mon, 17 Jun 2019 06:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=9OFogdotojDgbBm84jjf3ZyHcjwNtATS3V41A8R0tbk=;
 b=aBhbP8x3KTGwpBnzXcC1qr0Lzh4aFZjNplJMo+u6A2OELysdXJneHupPdvnyG3Rkuq
 Yx89kldvUiAQfyGtAA+aXPEik33AMcSI92VJhtSKyXJOPv/kfv1CANiNaUVXcjg8ge3O
 ody6aN1UCgu2TKHjBwZmnEIfwqNIDyG31yKv8SNhBde2X7tdcYIDHypUKUrVRwWgEdxn
 dA/2GAwEfaABwsreHQ2ahsEjdKfk5UHLiTvA6/BoR+hcns/csg7ijraBCBHsgp8cJDR8
 cW9GofJRAQti2HWZWossh47qt0+9ahdAe4nPEGzBZ9yYJazWzTh+L6xCD60tN1GUcCLD
 G1DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=9OFogdotojDgbBm84jjf3ZyHcjwNtATS3V41A8R0tbk=;
 b=sDEXJjHMWx51E1CtwxyLLxvMYw9rOwaF25/hBkDsuI19eLEcyQ2M03yg82xk/le+ba
 9KLEZGG37pVBb9tnL6/ioxCuEEuaQGT1MUsCMqIzmrQo5czzg8aLinT1oVnDYPt/gWCy
 SAsKN49lWeFDs8Uxov5kceO4/F3ok+Jnf+Ml5GSMq3wHLM3wZTPbxnP0scHtCQA6lpU4
 W76+lnaksHhwp3YWQCwWX3Qfp2Svpdlwk93z3y0MPlCCrGm0F4+rF8cTCjhqn5mHT+wQ
 F1Ed9cfepp3ayiCNFa9JjOoHXoSSxD03yKrZ8dUnv+oeZovWIX0SFn+DSa3gP+pMAGoC
 seOg==
X-Gm-Message-State: APjAAAVAi/mRIihn10Dh/NMKHEYaFnInu4dKGXOF/TerncPRGGg+xOBg
 8Of1wWSv42d1B30/y8qU7+M93g==
X-Google-Smtp-Source: APXvYqx0owYUV06LH+1Cq4q+HrrtCAvZoqexeDj2CaXeUgiaLZffkqD7qQj9kis/Banmz7ws92UotA==
X-Received: by 2002:a50:bc15:: with SMTP id
 j21mr117188579edh.163.1560778003863; 
 Mon, 17 Jun 2019 06:26:43 -0700 (PDT)
Received: from localhost ([81.92.102.43])
 by smtp.gmail.com with ESMTPSA id k21sm2109696ejk.86.2019.06.17.06.26.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 06:26:43 -0700 (PDT)
Date: Mon, 17 Jun 2019 06:26:42 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Andreas Schwab <schwab@suse.de>
Subject: Re: Working device tree for the HifiveU
In-Reply-To: <mvm4l4o5qdd.fsf@suse.de>
Message-ID: <alpine.DEB.2.21.9999.1906170625480.32654@viisi.sifive.com>
References: <mvmlfy05xjm.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170347460.19994@viisi.sifive.com>
 <mvm8su05rqc.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170546100.4549@viisi.sifive.com>
 <mvm4l4o5qdd.fsf@suse.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_062645_377435_4067F60F 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 17 Jun 2019, Andreas Schwab wrote:

> On Jun 17 2019, Paul Walmsley <paul.walmsley@sifive.com> wrote:
> 
> > On Mon, 17 Jun 2019, Andreas Schwab wrote:
> >
> >> On Jun 17 2019, Paul Walmsley <paul.walmsley@sifive.com> wrote:
> >> 
> >> > On Mon, 17 Jun 2019, Andreas Schwab wrote:
> >> >
> >> >> What is the correct device tree for the HifiveU that works both with
> >> >> 5.2+ and U-Boot?
> >> >
> >> > U-Boot should follow the kernel's DT data:
> >> >
> >> > http://git.denx.de/?p=u-boot.git;a=blob;f=doc/device-tree-bindings/README;h=2ea3439a170236bd912930991ad70ee7289dcd29;hb=HEAD
> >> >
> >> > Thus the upstream-bound data is currently here:
> >> >
> >> > https://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git/log/?h=fixes
> >> 
> >> That is completely useless.
> >
> > If you have specific questions or comments, I or someone else would be 
> > happy to try to help you out.  Otherwise, there's not much that we can do.
> 
> It doesn't even have ethernet, so how can it be of any use?

We can't add the Ethernet data yet, since it hasn't been approved by the 
DT maintainers.  But of course you can always add it yourself to your own 
kernel branch, along with the driver.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
