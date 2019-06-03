Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB2D33533
	for <lists+linux-riscv@lfdr.de>; Mon,  3 Jun 2019 18:45:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=py2HYpyRRI1/uvo8VNR7u6ng3KUh2bpi3CvxBO7Wrf0=; b=RrhA7SPyzofezP
	slja60Zo6EYM9M86GXrqky3SBEr/J+LD+vss02PUV5102B9Hz9eHgE6PfzvBnPtZpgX+VzXma3DG3
	8URi1TEOGzI8NX6/MYbbneo5cwGA91HwdlgXANfOACe5tA9WycnUD/jhTWxM7+4xe/zk8QP3phcKH
	AS1c1P8kXuXcIJ9vqSfYGxPRq+FeeJs1JB8n4vmafgRQOKTbzZoErdazDYfOO8jOsilECH9fN5Xll
	YwVYpEZHAZ5yQLQ4+ZKcDjpUPQcP7f75RIWp+vO4HEOfBT8dm/TpBP4l+hii4OqtyzazcsINCccep
	GtZ+PKuxlYlwBet/G2Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXq4t-0002n2-DR; Mon, 03 Jun 2019 16:44:55 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXq4q-0002mS-Pc
 for linux-riscv@lists.infradead.org; Mon, 03 Jun 2019 16:44:54 +0000
Received: by mail-wr1-x444.google.com with SMTP id x4so12835053wrt.6
 for <linux-riscv@lists.infradead.org>; Mon, 03 Jun 2019 09:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=NJGdLM5jNQqVh/tXtUBikivLLdLINsdst7u6+yswu0c=;
 b=ZP/HtbcPUvZxB9Q0MbegeMtqPRO7+j1kGAVRul2PKgNJR6K921Hz7fTUyGFQbUj77L
 LwQd6qjhY837VcYfgp2KubDgIVH9s7Lzg3PFVLcjprFfEjheLcTiAeSkw/zXX5yCNfcd
 prn3n7KEGkH+eMcgRukviovUmE4ltZgvgcocQktqHOuD/2zdBC5Kk1Qg8vAXQ9T2WuGX
 FFmn2MZ+x6+emZ+QZNoo58rGewJGTWISPv69bMByWXdYPspwjGwdsvYhUwkgc03+qMwc
 +Yga41sHdylt3zlve6g/YCUygSivY7IEvuy3y/MK8RFpf0bzVLKUI9ukPMhhksnSfhvH
 yUWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=NJGdLM5jNQqVh/tXtUBikivLLdLINsdst7u6+yswu0c=;
 b=FbdPOdw8qfAgw3a0A/azVpfsco3xcpiYP/DZin0zPVlWH9UfW1wk/181+39Y4BVYWv
 qocOO2vx6B0pMJpUowHv6RuY5/yGhKyj1FzqA/1DvdEjSor66sLja3vsZawBLga5B1CA
 7Do8GwnuGp1yJV41TufnpJDqcdKxStPnBfSDg/1/DvWtoZqUbt0FlZFAS6pP7EbTvtIU
 ODjReM7BkjKRszWNZImevuvQTK/LCqZ9IlQN3FyQgdtmNR1XI88b5Y5HEc8XHrcZL6DM
 fMN8YbDIfz2CJzX6SVRLSx0RQx0C+lWYea30WS7r01uSDX6VCCbkHN0iSyNOkp7DfpTQ
 xwlA==
X-Gm-Message-State: APjAAAWKANJNYp/Afevd/jw3UKcQZoeUTv4PVrUQqQxOYsyYPgZFHy71
 GrDhifF5r9/yleI+uV2UV1qppA==
X-Google-Smtp-Source: APXvYqylUdDthXrcelrczQuGZiYd5FlDHM36e3ws0O66EvAYivxEwAu7vFW5tazmo1WoiSWybHvoqA==
X-Received: by 2002:a5d:4089:: with SMTP id o9mr11501355wrp.6.1559580290951;
 Mon, 03 Jun 2019 09:44:50 -0700 (PDT)
Received: from localhost ([213.208.157.39])
 by smtp.gmail.com with ESMTPSA id n4sm13252749wrp.61.2019.06.03.09.44.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 03 Jun 2019 09:44:50 -0700 (PDT)
Date: Mon, 3 Jun 2019 09:44:44 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Anup.Patel@wdc.com
Subject: Re: [PATCH] RISC-V: defconfig: Enable NO_HZ_IDLE and HIGH_RES_TIMERS
In-Reply-To: <mhng-faba08ec-69a7-43b1-b2d7-c2e996751506@palmer-si-x1c4>
Message-ID: <alpine.DEB.2.21.9999.1906030944170.9338@viisi.sifive.com>
References: <mhng-faba08ec-69a7-43b1-b2d7-c2e996751506@palmer-si-x1c4>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_094452_889881_7201393B 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
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
Cc: aou@eecs.berkeley.edu, schwab@suse.de, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Atish Patra <Atish.Patra@wdc.com>, anup@brainfault.org,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 31 May 2019, Palmer Dabbelt wrote:

> On Wed, 29 May 2019 01:00:35 PDT (-0700), schwab@suse.de wrote:
> > On Mai 28 2019, Palmer Dabbelt <palmer@sifive.com> wrote:
> > 
> > > My only issue here is testing: IIRC last time we tried this it ended up
> > > causing
> > > trouble.
> > 
> > I've been running kernels with these settings since the beginning, and
> > never seen any trouble.
> 
> OK, I'm happy with it.
> 
> Reviewed-by: Palmer Dabbelt <palmer@sifive.com>

Thanks, queued for v5.3.

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
