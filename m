Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEC912BCD5
	for <lists+linux-riscv@lfdr.de>; Sat, 28 Dec 2019 07:04:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qzbNbOIvsP4gAiPfipecf978/GCQrgDk0y62e+93kPs=; b=Mulj7DCKy/PED/YKZ0zagpvLS
	foPsQXbz/Mmq6Ei/kcgdKzcFJ2m9G6NTiC0z1D2p5fL1ySHUpcwxilkA0fkv/ngfqcjpvLDMGxlbx
	ADxZcEmYV+Nw2vOWhGDJdmm3ysmYwOmNQzbeWmlpCCOYlH5WFEMpMfh2RmA5ogqjuXghXKfQm3cS4
	upJd2npsVgwlNH8BbGIu1EwHLNpPjZ2S0GpOAB+IGEdZWD28OSEdyCUI4a364wb7evpPpVBJ3LV+O
	5/FZmxvEHLXbRVmlWC2DJMaWYS0DU5Z5W7IbrXpw9Z+WRng962scV5QOwJwbCmbL0plrWIeNH9Lwc
	eZDc67/gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1il5DQ-0006Lq-MZ; Sat, 28 Dec 2019 06:04:44 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1il5DN-0006LL-U4
 for linux-riscv@lists.infradead.org; Sat, 28 Dec 2019 06:04:43 +0000
Received: by mail-pf1-x444.google.com with SMTP id x184so15729052pfb.3
 for <linux-riscv@lists.infradead.org>; Fri, 27 Dec 2019 22:04:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=qzbNbOIvsP4gAiPfipecf978/GCQrgDk0y62e+93kPs=;
 b=CoVCyv02ia0+aQ/wPvSFRwHD3U41v0VLim6xCWrXuit2TaajL/q6tXDl48MY1a+o3o
 /ORfY6SrSZYOVOZftJvzu1Dd+NfH2mJkTeCP5L/IeWvijAsUgnNIwy2PdRtj+YxESxsL
 3/4/ruvtYs/r5pTEcGyxbhrLElBMVH0eWO9WjPXAN8WaVXvmS/jL17Wmf9R1EMaUYJIw
 OrfDE7C7Q3u0zYWm1SCC3GKuC0PCGFfCeu4EY4Y81AmYvv2T8I0+vkx0P8S3VcrWFK01
 US+Sr2QqVgNhxRLiXBMrpPGVZZlCE42dGEOEDsDZZbmgn+ifvDqaIHhjveJKnqa22Dc3
 gBGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=qzbNbOIvsP4gAiPfipecf978/GCQrgDk0y62e+93kPs=;
 b=cgfIj5FeJuz4g1oe0LNooD9haGjA88wrX+LPwaKQDVwK6ZtHmOGDDI8Ax1pbv3hhRD
 pMFEH3k/nQf/DWHA6kIhBbg9sF58gj4jSlg+ITFVw0pi+iWq1CDRIHut/twmp7p3vZsw
 dy1qHiHUpWED9UbpvavdXFFu1nihxKmnMM35tr6jsu4rjMXE9AQuEG/+1NnCV73McrVf
 VCzZeCpuN9iOBdw1kfQwbGca5q1fpmvDAcWlFtlXikfklCgWU92vwmNSuNFBavo1au/v
 nFCaTa8ctIoAngKGQgP21CezYkhs/ML0Ok4FOuhVKiKL9TFNWeluh79F0NZZW05zRD9P
 tuFw==
X-Gm-Message-State: APjAAAW7mpi9Q2x0zZE91deH8i3tFY30cOnSsCiJpmjx6lTR0X+irgcU
 W0/5E5NJxNMotDBM5bfdu0i1sA==
X-Google-Smtp-Source: APXvYqy0G09EOEAQ9nRCh+onX0Jm1zj5xoft/moo0rStNvLj7EyOjswLMVxkTv68ovPwt/dXExCmcw==
X-Received: by 2002:a63:4282:: with SMTP id
 p124mr56853187pga.155.1577513081187; 
 Fri, 27 Dec 2019 22:04:41 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id b8sm43763115pfr.64.2019.12.27.22.04.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Dec 2019 22:04:40 -0800 (PST)
Date: Fri, 27 Dec 2019 22:04:39 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH] riscv: export flush_icache_all to modules
In-Reply-To: <20191217040704.91995-1-olof@lixom.net>
Message-ID: <alpine.DEB.2.21.9999.1912272204300.194339@viisi.sifive.com>
References: <20191217040704.91995-1-olof@lixom.net>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_220441_970090_692DA0F4 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv@lists.infradead.org, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 16 Dec 2019, Olof Johansson wrote:

> This is needed by LKDTM (crash dump test module), it calls
> flush_icache_range(), which on RISC-V turns into flush_icache_all(). On
> other architectures, the actual implementation is exported, so follow
> that precedence and export it here too.
> 
> Fixes build of CONFIG_LKDTM that fails with:
> ERROR: "flush_icache_all" [drivers/misc/lkdtm/lkdtm.ko] undefined!
> 
> Signed-off-by: Olof Johansson <olof@lixom.net>

Thanks Olof, queued for v5.5-rc.


- Paul

