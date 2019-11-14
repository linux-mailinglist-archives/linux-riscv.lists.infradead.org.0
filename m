Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD78FFBD98
	for <lists+linux-riscv@lfdr.de>; Thu, 14 Nov 2019 02:44:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+dfvlMgPuV+k0ITHOh4Dq+izaMCthDUMMXYiu1q/xiI=; b=ZuhOKON+RcL3Yg
	QME39C3wyHQGoqghctV8SoBcjvLMd+Gny7snfVem2oNalz0Vbb3Blo1GNxE+h5XJZlSQ/cRotKsgf
	ISmTC5tr8opa9xN58XE/dHDUVwXLrFPS0CMWAUnohZDDz4cpQTI9DjcQp46OUshP17dts+TJImK4U
	FfvhfGXPFC3bMtBMZTDkxRDXkmQAbqB0og1m5a9HQxkTjkUoJ7eYrX4qknBbxIyjuw9IZ+l1w4vCr
	uxRZcWKnWpvy/Dx5s9oQ3MgGe3qhW87tjxx2GqcaNm1yRu6YBbGc6vMv494uwidGG62J8XTy2Zupl
	Q629SaIvEaUOVZxpuWlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV4BW-00017F-Q0; Thu, 14 Nov 2019 01:44:34 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV4BT-00016P-G4
 for linux-riscv@lists.infradead.org; Thu, 14 Nov 2019 01:44:32 +0000
Received: by mail-oi1-f194.google.com with SMTP id i185so3761511oif.9
 for <linux-riscv@lists.infradead.org>; Wed, 13 Nov 2019 17:44:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XksZDpsl+U9eidQT9vUr4VQK7VIl76Oi7Z4m7FmcSig=;
 b=A67iqtuHuXXJfVxVTvdjB0Bq8zT+5pzeL46YRUts7npLSF4KNAEazZtq5E5+4vwA+E
 AGD1IPpyETUM7hPBMXqvLtFiujV5GTdce9fK6JjFUc2/Z1dHcbVoYGxp5reVM7mby5T2
 inNfja2z33wDO2LchTOddJwxVBrijZMQehTnEWkeHefZkUE6B+dOG44CS1bKeBYoHwuM
 s+Ln6+PZHwNiU//ik4HGFt/CAusHoA6eKkO+2ZyrPCiP259hR+HLGhk47kgDl0K1TvR8
 FZo7Kf2RvflbE8LMWQpCD0deyhYhbmbTLu8L+JlsWOwIOD3LjkmNvMtRTalmlYBcMAgh
 wW9w==
X-Gm-Message-State: APjAAAUXjPMsQLynRpxxKfyfiTUf4aJnRlVdgZzN2DepYcNlcY6c/NYT
 R+jMM9Jg7OBR7PTvSpndig==
X-Google-Smtp-Source: APXvYqx2Eeg+6EnhJgfdAOYmTb/PvPNHZCErIRw9s8XIEA97Diy6JQJHOsXE/C4FqFN6moMduEPhwQ==
X-Received: by 2002:aca:845:: with SMTP id 66mr1397732oii.137.1573695867242;
 Wed, 13 Nov 2019 17:44:27 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h79sm1303959oib.3.2019.11.13.17.44.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 17:44:26 -0800 (PST)
Date: Wed, 13 Nov 2019 19:44:25 -0600
From: Rob Herring <robh@kernel.org>
To: Paul Walmsley <paul.walmsley@sifive.com>,
	Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 1/2] dt-bindings: power: reset: document the QEMU RISC-V
 virt machine poweroff device
Message-ID: <20191114014425.GA1748@bogus>
References: <20191107212408.11857-1-hch@lst.de>
 <20191107212408.11857-2-hch@lst.de>
 <alpine.DEB.2.21.9999.1911071431390.8918@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1911071431390.8918@viisi.sifive.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_174431_535923_8BD17D03 
X-CRM114-Status: GOOD (  20.79  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, peter.maydell@linaro.org,
 Sebastian Reichel <sre@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 02:32:01PM -0800, Paul Walmsley wrote:
> On Thu, 7 Nov 2019, Christoph Hellwig wrote:
> 
> > Add the binding for the trivial Qemu RISC-V poweroff mechanism, which is
>
> There's nothing RISC-V specific here.  This IP isn't defined in the RISC-V 
> specifications, or anything like that.  

Does the VM have a spec or anything? Would be nice if it did. Would be 
nicer still to just copy Arm's virt machine.

> Apparently it's a SiFive IP block which now has a virtual IP 
> implementation in QEMU in hw/riscv/sifive_test.c.  But since there's 
> nothing RISC-V specific about this IP block, any QEMU system, with any CPU 
> implementation, should be able to use this virtual IP, and this Linux 
> driver.
> 
> For these reasons, it's better if "RISC-V" is just removed from everywhere 
> in this driver.  If something needs to go in its place, "SiFive" may be 
> better.

IIRC, there's already syscon poweroff binding. You could probably use 
that.

> 
> 
> - Paul
> 
> 
> > just a single MMIO register exposed through the DT.
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > ---
> >  .../power/reset/qemu-riscv-virt-poweroff.txt     | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/power/reset/qemu-riscv-virt-poweroff.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/power/reset/qemu-riscv-virt-poweroff.txt b/Documentation/devicetree/bindings/power/reset/qemu-riscv-virt-poweroff.txt
> > new file mode 100644
> > index 000000000000..80ff6fd4e3b7
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/power/reset/qemu-riscv-virt-poweroff.txt
> > @@ -0,0 +1,16 @@
> > +QEMU RISC-V virt machine poweroff device
> > +
> > +This is a device in Qemu that can signal successful or error exit
> > +by writing two magic numbers to a trivial mmio register.
> > +A Linux poweroff is implemented as successful exit.
> > +
> > +Required Properties:
> > +-compatible: "sifive,test0"
> > +-reg: Specifies the physical address of the register
> > +
> > +Example:
> > +
> > +	test@100000 {
> > +		compatible = "sifive,test0";
> > +		reg = <0x100000 0x1000>;
> > +	};
> > -- 
> > 2.20.1
> > 
> > 
> 
> 
> - Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
