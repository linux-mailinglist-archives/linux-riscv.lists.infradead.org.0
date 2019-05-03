Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31047133D9
	for <lists+linux-riscv@lfdr.de>; Fri,  3 May 2019 21:05:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QSWNoWT17Vo8kgk+0LOCwn5Eq7JDBgp1s2zP/+huj8c=; b=eX60nTzkNqm2UI
	cAPnM/j2sL+Xjwzq6o5MnZEs1mP6FOMr4xzVMBmdI6T3Peuxr9R82psauy+ZnJ/GFZ5DVIoGICsen
	RCyrJV3n9k5WnSc+4mfvV/Et+XjtWDPPj0PfQOPJu6a8izHU/2ZdLhCKwmoS637MQPKT4uL+jL1/K
	VH3tY22YANpEv7WziKC5Ac2aRuAcx7CZShIVuebme/X50Dqk3REvGJ+Q6FaViwW339u7m1/dYHLAF
	O6dQZ81BIOn8rr2oUxgUcqjX4oMwomEIY/3fODNgjKONKBSZLJKg7zEnXDu8xSUlria1nijyjOsEb
	w9zd3qgz7GBU/GKDI2UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMdUi-0004Pm-5J; Fri, 03 May 2019 19:05:16 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMdUe-0004Op-Fa
 for linux-riscv@lists.infradead.org; Fri, 03 May 2019 19:05:13 +0000
Received: by mail-it1-x144.google.com with SMTP id i131so10871458itf.5
 for <linux-riscv@lists.infradead.org>; Fri, 03 May 2019 12:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=WUEvVuMZ7YPl2dVmcnur9vXgWXYbDp4Kv2NYf/KfC/E=;
 b=YyLoqA+MOSgu5Z/mdOZYresCbnsrP9MOECqAR4bgemiqd1NPH4z1kTNshqMr1wGxrO
 1ulkumKpTQ6uWLtA2Ene+eq+HrTs1KZoMqs9xg+p39iicmy0zTCL7uVABR+WOuDZA063
 +oNPgr10wY9fURWnsMIn4Glzq/w4seTiQt6nzHUkagCRCpv7txThNbb5poKXXUtiaq0C
 amJC+5CNfkSN3LxFTXn27zjZN09O67v/k/iPmRYOidALpODycYOWZxGJ1kWkYY3q8zeE
 jHByq6IVQuw2xmMN/9K1zm6po5Ybx+hPTG4ELBhJgSBqEWzHWP+zmvqJygso2YzaXz1P
 hhwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=WUEvVuMZ7YPl2dVmcnur9vXgWXYbDp4Kv2NYf/KfC/E=;
 b=A8nwxxpSNQwiZcDueadBwznEpIswYJPDj1FL+OTvbDTYaIx0X8Ft+fxvfmzh6agZfe
 rep+odCfPStSCUhuJhnX6FpBVPF2RsWQTY2L9ond8MFYfTwO2Hl3URn6VfDHto00GfAr
 mr/k+M83ahkMS0II6WImyM4jtyaZ1JxQkjnlWcNzNjPb8F62vBzqkBz00sgzYDm+jAKx
 Y1bRRsFZoCZ/y0V3abSlTy3lXN7wq/Nd+r22Deg+KvZThHSUU2K03L4sUI5b1Yk5v+jY
 5fNeS9mr13USv/wZ60RfnnVnPJhkqJjX+i46ZWFRsXjx8/YATzp2Djwr8Ss8SA5SA3bh
 CNUQ==
X-Gm-Message-State: APjAAAUxAt03mq7CxDDHZ43mLuxctrqSiHmTrYSpcNizdD6QdQQSvZOs
 WsKcHb4FvKuhJRPoiC6blNd8Vw==
X-Google-Smtp-Source: APXvYqzFS3nViSd8Ml55qWBQUACdB1pGNmsO/5+y7g1p6Gt2X232FHXVSyZ7sg92TLGrQz/n1IlHPQ==
X-Received: by 2002:a02:1146:: with SMTP id 67mr8522400jaf.10.1556910311443;
 Fri, 03 May 2019 12:05:11 -0700 (PDT)
Received: from localhost (74-95-18-198-Albuquerque.hfc.comcastbusiness.net.
 [74.95.18.198])
 by smtp.gmail.com with ESMTPSA id d193sm1154451iog.34.2019.05.03.12.05.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 12:05:10 -0700 (PDT)
Date: Fri, 3 May 2019 12:05:09 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH v5 0/2] tty: serial: add DT bindings and serial driver
 for the SiFive FU540 UART
In-Reply-To: <7hsgtwlm5t.fsf@baylibre.com>
Message-ID: <alpine.DEB.2.21.9999.1905031141530.4777@viisi.sifive.com>
References: <20190413020111.23400-1-paul.walmsley@sifive.com>
 <7hmukmew5j.fsf@baylibre.com> <883f3d5f-9b04-1435-30d3-2b48ab7eb76d@wdc.com>
 <7h5zr9dcsi.fsf@baylibre.com> <f2bb876c-2b44-663b-ea06-d849f721fb6c@wdc.com>
 <7htvetbupi.fsf@baylibre.com>
 <alpine.DEB.2.21.9999.1904191407310.5118@viisi.sifive.com>
 <7hsgtwlm5t.fsf@baylibre.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_120512_720760_8B6BBBF3 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 2 May 2019, Kevin Hilman wrote:

> Paul Walmsley <paul.walmsley@sifive.com> writes:
> 
> > I'd recommend testing the DT patches with BBL and the open-source FSBL.  
> > That's the traditional way of booting RISC-V Linux systems.
> 
> OK, but as you know, not the tradiaional way of booting most other linux
> systems.  ;)
> 
> I'm working on getting RISC-V supported in kernelCI in a fully-automated
> way, and I don't currently have the time to add add support for BBL+FSBL
> to kernelCI automation tooling, so having u-boot support is the best way
> to get support in kernelCI, IMO.

That's great.  Please keep hacking away on RISC-V support for kernelCI.  
My point is just that the U-boot and OpenSBI software stack you're working 
with is not going to be useful for automatic tests of some kernel patches 
yet.  That stack is still very new, and was written around a non-upstream 
set of DT data.  We are in the process of posting and merging patches to 
fix that, but it's going to take a few releases of both the kernel and 
those other boot stack components until things are sorted out in a more 
durable way.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
