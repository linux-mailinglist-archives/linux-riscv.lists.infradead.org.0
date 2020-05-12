Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA0A1CEA94
	for <lists+linux-riscv@lfdr.de>; Tue, 12 May 2020 04:12:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a6FnCmniEb0SZj05Hm52FA7/odoyQ0dRtkEViBqLyQk=; b=uoGPFr/A2NUoWyvFXXDE2G/Hf
	dPWkKwgr5XIt9cHIlReen1SpFbkRw69hVIdDPEbXHxJQCLWRDz2o6VsIC+s/m/HoRnCVSPwFSj6XX
	cHle54qLDHCXik9yGTsGSU0AVGVPZNzFegLMLfxQEuDNbWYtWgZ+2mq/zy65YCyjVve0uuJFpulU2
	HsEViB5n2YJFFrQ1ZnvCiGnaunA8sq8+0rqWRBBkBEH+z2wSsb3vhB7qoZtSMoQuxnjixIt0MWoSP
	ZvYN3iE2te9mSCF9ZE77iv7/EWHcbz1UosyU5S0dlxctPBhttndjMrtK9bKf2LddVVs2uUDVW1CGm
	YQfqYlG/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYKOx-0007Ip-U6; Tue, 12 May 2020 02:12:11 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYKOu-0007Hr-AS
 for linux-riscv@lists.infradead.org; Tue, 12 May 2020 02:12:09 +0000
Received: by mail-oi1-f195.google.com with SMTP id c12so15958403oic.1
 for <linux-riscv@lists.infradead.org>; Mon, 11 May 2020 19:12:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=a6FnCmniEb0SZj05Hm52FA7/odoyQ0dRtkEViBqLyQk=;
 b=PQD0/NLZ50Wr/vkNGNjrCwYmxnCS3wFFPUO5YL0GUnQKXPTGUhmW6hF6h4u9c7inex
 8XgChsO3hB9t2IKjdmvmd79InG9/cuJA9wTlFMaM+86e25CVI3LQ5hZV9R5vQOKA3R7q
 b6kQjd2/iBvsvpzd6+M98fw8l2IOaFVrEU0X6gNl51cLZSSnaRu8mmn0GP20drzzD6JT
 27qizczyUmZLEuTLitk0BDj7Gf0TMJUd8vd4+egyoZRWkWEFk8Rsl+eWJsV1lBnHw6Vx
 FtWedFV3JOtm+/G1vgGZIHY4/t9/hPEbSyklBaqAz1JpHsaEDFqG38Q41vsdHzybZ39g
 ngdg==
X-Gm-Message-State: AGi0PuY9qmVPYw8ezmMNcTuojp6BLAGKn1G7GFu+bFEAPLHQurjn57QM
 0rQbow3V2quo95TGW96uYXewQdE=
X-Google-Smtp-Source: APiQypLyUokqa9+HwgdwMV+wpVX5omYrQpTlGxbxo5UJ8ncdqjh4nKtXr+dGUhC/l1K5SQDIn8SHuA==
X-Received: by 2002:a54:4512:: with SMTP id l18mr21349336oil.81.1589249526246; 
 Mon, 11 May 2020 19:12:06 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t6sm3146401otb.27.2020.05.11.19.12.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 19:12:05 -0700 (PDT)
Received: (nullmailer pid 20842 invoked by uid 1000);
 Tue, 12 May 2020 02:12:04 -0000
Date: Mon, 11 May 2020 21:12:04 -0500
From: Rob Herring <robh@kernel.org>
To: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
Subject: Re: [RFC PATCH 4/4] dt-bindings: net: phy: extend dt binding for
 VSC8541 ethernet-phy
Message-ID: <20200512021204.GA12999@bogus>
References: <1588072608-7747-1-git-send-email-sagar.kadam@sifive.com>
 <1588072608-7747-5-git-send-email-sagar.kadam@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1588072608-7747-5-git-send-email-sagar.kadam@sifive.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_191208_359638_5BB4BF81 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 atish.patra@wdc.com, palmer@dabbelt.com, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 04:16:48AM -0700, Sagar Shrikant Kadam wrote:
> Adding a OUI (Organizationally Unique Identifier) for VSC8541-01
> device to dt node requires a corresponding dt-binding entry as well
> so that checkpatch doesn't complain with a warning:
> 
> DT compatible string "ethernet-phy-id0007.0771" appears un-documented
> 
> Here extend the existing dt binding of VSC8531 device to include
> VSC8541 device example.

Checkpatch.pl is just dumb here and can be ignored. We have the regex 
that documents this compatible. We don't need every VID/PID listed.

> 
> Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> ---
>  Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt b/Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt
> index 5ff37c6..774448a 100644
> --- a/Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt
> +++ b/Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt
> @@ -68,3 +68,6 @@ Example:
>                  vsc8531,led-0-mode	= <LINK_1000_ACTIVITY>;
>                  vsc8531,led-1-mode	= <LINK_100_ACTIVITY>;
>          };
> +        vsc8541_0: ethernet-phy@0 {
> +                compatible = "ethernet-phy-id0007.0771";
> +	};
> -- 
> 2.7.4
> 

