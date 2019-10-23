Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A74F5E2616
	for <lists+linux-riscv@lfdr.de>; Thu, 24 Oct 2019 00:05:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ppw5vuc4cLKzl5yvD41hmH+ygD8wlk/YKlZVkM8hc5k=; b=ckGoqEjavMGvsa
	BoRkxgYtonnD4U88/a+hnJCH/TDvrtsC5i6BK34TIeqiU6M4nrNRFIU3Wagr/hbi1M+7fJP12TE3m
	kBt/imAkCQY2P4dDSURU2uvWHuJWAle5e1K0hQI6XVJ3EFXTvdqGGx3cyCcFKUQvYuvfYtNMY4x9d
	b6MpsmVLqDAv7wbKtV8zZlTUj5EevCvJ4G+UREh/74S+UeFtdOoSsvfeXlzh/MifIhxmaIG/N8G6f
	24q/+nmkQxy/AWJK3hqeAT+ny3JhTvwOPYaAVlBS9zkDxvRJR3GD9HwALs2Bs3wY34yPCiu0xQgrV
	D5ZLOqaNFazUSSsFJrPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNOkb-000254-Rn; Wed, 23 Oct 2019 22:05:05 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNOkX-0001dF-Av
 for linux-riscv@lists.infradead.org; Wed, 23 Oct 2019 22:05:02 +0000
Received: by mail-io1-xd43.google.com with SMTP id r144so15066754iod.8
 for <linux-riscv@lists.infradead.org>; Wed, 23 Oct 2019 15:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=XdPCEWlB4SwMtK6X0JrzAACXbCmQF9hCLxinMMV5oKY=;
 b=DXtMHtarGS/991rhtQn7HiY905vOBpsVeKHWWuraadUPXnYwcgaOxCQ6CyqK52G1WJ
 oLqKh0ufsj1NN0h6b1+ldhs3JnF2et6/vzpjPbklc+cFSogL6za9lDUterUbKddjPvFg
 6nXxsZBxwOWPCFPAeHrdqAiF8QIybMb/OVsp1hqKV0pTrIeoj3GaqSGNX3NmSMQN70tu
 3ucYujVS7edy6y2UPknBDCT7JPHPYltLhmPy03ySSZeynZ+3sSau+yq2StAUyvi1C0Kk
 5/t6MFtjq4Dzsq31ffIYG7vDcNl3ugWzafyatEwBiGDGx0bFkrSI+nf/PFSTCgBfpfkh
 8KDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=XdPCEWlB4SwMtK6X0JrzAACXbCmQF9hCLxinMMV5oKY=;
 b=gjpF/EP5mhrP0ThsNW4t64hlUqgGbTDeQ8K5b+ms2mdRiHs9oMLBw8nvFzGR3kkn/q
 XcD+Pqi1ql+yTObMxG4zr3PmTmzsoqesFK2NWmXadupcTtbcVIwVqwtP3sL9HYbUafhM
 PPP+SaRjWtTCpSQQ57vfGGRFNMAHWW0/WEBXVb2H0Jr5vLtvg5gIx611act9zlswJBXy
 G9Ez9+E7reEa6bY2YwCe9zfNcKiTtp00IQagW5Utm9hNbmCxeRJqZrmIviPCQaEHOAgi
 +OQxKuEwlOtv0zTO9NhAmXkSJPOejfjfh2i7q1bIpbfzZPfx06BeiTXyWC4APSRMqt3B
 8WqQ==
X-Gm-Message-State: APjAAAXr6Kp7YMCg9dg9Q6y+t9rweA7KNE8UMwvHFnI0gv4DovhjYncZ
 hXUdQ1JH0MU5OCcXH7ShX1d3NTKPSQc=
X-Google-Smtp-Source: APXvYqyouhiLhfPkOcgMyKI6xZ8nOzoA6AHtQWyGjoCzRe6OlSEwj/Cz5O79ZygyDNmxJz3rPwbULA==
X-Received: by 2002:a6b:400e:: with SMTP id k14mr5875901ioa.254.1571868300059; 
 Wed, 23 Oct 2019 15:05:00 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id p19sm4640731ili.56.2019.10.23.15.04.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 15:04:59 -0700 (PDT)
Date: Wed, 23 Oct 2019 15:04:56 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 01/15] riscv: cleanup <asm/bug.h>
In-Reply-To: <20191017173743.5430-2-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1910231504450.16536@viisi.sifive.com>
References: <20191017173743.5430-1-hch@lst.de>
 <20191017173743.5430-2-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_150501_435115_34B1B6C2 
X-CRM114-Status: UNSURE (   6.03  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 17 Oct 2019, Christoph Hellwig wrote:

> Remove various not required ifdefs and externs.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Thanks, queued for v5.4-rc.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
