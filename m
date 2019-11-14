Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D29DFC0CA
	for <lists+linux-riscv@lfdr.de>; Thu, 14 Nov 2019 08:32:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xJ7LQlYYMCSkjHzYxxSphJJdsZu49cLLV4bNkF4ytGQ=; b=Nm3YnY/XV3Dw8z
	HPqrHv+aGYtQOfHfJa8v3UPKGiDavxfx+BcU8fAjd3HBkB1ddN7de68kONb+2OvSuKK3qcxAZrFpI
	STeKLuwy+RGcK/s4temQrTMLMtxrtcGof1pZP3ravOM6YjtS1QKR7B09FesqXElFQZrMutjAteb5o
	5kwe/q0qYjyzaOVAJ1hHCbPu3BI74KF0gRWHybJjt31OMokLUWtXpe2Z2ZWhYQyEi3ytYrXFGrTXh
	CYR+H+IfCNA6nhBtsunJOEUaKUHWPW2rHYmPceX/vW4xoZCQ3MfkIzKUjzibZnpAYAPcMRcBNPo15
	bnp8LU7U1qX1mh3zgwqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV9bk-0000ag-Pl; Thu, 14 Nov 2019 07:32:00 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV9bg-0000aC-Qh
 for linux-riscv@lists.infradead.org; Thu, 14 Nov 2019 07:31:58 +0000
Received: by mail-ot1-x344.google.com with SMTP id m15so4032293otq.7
 for <linux-riscv@lists.infradead.org>; Wed, 13 Nov 2019 23:31:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=sp13pugco4jeUE50+6Uu51koFZjpGmyiNJG3fNaiPd4=;
 b=f/dc+DTzMkOZ4pCueMlTZ2zYgXFCESUH66S+6oBdUDG0ckAOvDUBVbwCy2azw0t4Gt
 Y6ySKwQdgG/d79vyUQW1Ui0JRoyKDAajPdI2Bnp3Kv8Xng0DpLHiM3RgA3cl3mKTqzW/
 AW6AhYnQDuSXK45iHFZD7zxbq5DRD2WKyip6RDsmULomo8m2az5CgBlZp8K6/LhqHC1p
 +AQ299E7pvjaSWy7MifuxpSDq2YvaW+CDDwr1Sq1OYx5TeExkik33xKuY5HqlMQA9SI3
 ht371LC/Q27u+Ddi01O3CIdpvQGHN9LWXRJa9NxOUTgH/N6cLJct70OfgsocJI5+xncA
 01Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=sp13pugco4jeUE50+6Uu51koFZjpGmyiNJG3fNaiPd4=;
 b=MsLCDKVtuODKm+cNskO6MJ4Q3FWSTdUViBwHqKEY0NDaKZ1XdxLoXg1bYIqCbXuwOm
 LmJDEhGGH5zqvWJi1Aa9roBzSevQjwEwOEV+R4ZGyg6RVFnIq3dT7PUZABC52O0KV32y
 4HLieRDtk6HetMm3J2gQnxUJbEBkV7WBV9ikL+i0PERbrHm1PLKV463OLcITBIMGXR9g
 0mHy55gmlIahTD2PGi+RkmZZOlHOsBQ9M30/qClsd4nyqhkYnf438ZkUw+KO4ZhNJpZH
 OGPtnnRTTfRGOWRqanzaFyb/QPD4S23mroRaA4vWW+8nVT4Mv3hr+LXWHlwOWfLOKIU8
 8+tQ==
X-Gm-Message-State: APjAAAW5R6R56HzyEks7sudU1s03zl2RhIftjYihZ2LABTyuMhHrK9jg
 O3wTq4ENjmcCaQMb7yBwcYa0Wg==
X-Google-Smtp-Source: APXvYqwZtjyK4dW4se6QSnR09jKm821lvY6sQSncjnPNJZv7Dc0K8dmxr54D80OFEAeJzCrvn5A02Q==
X-Received: by 2002:a05:6830:50:: with SMTP id
 d16mr5921950otp.132.1573716715829; 
 Wed, 13 Nov 2019 23:31:55 -0800 (PST)
Received: from localhost (wsip-98-172-187-222.no.no.cox.net. [98.172.187.222])
 by smtp.gmail.com with ESMTPSA id
 x11sm1531991oie.25.2019.11.13.23.31.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 23:31:55 -0800 (PST)
Date: Wed, 13 Nov 2019 23:31:54 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 02/12] riscv: don't allow selecting SBI based drivers
 for M-mode
In-Reply-To: <20191028121043.22934-3-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1911132330180.11342@viisi.sifive.com>
References: <20191028121043.22934-1-hch@lst.de>
 <20191028121043.22934-3-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_233156_865252_C47EF3AB 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anup Patel <anup@brainfault.org>, Damien Le Moal <damien.lemoal@wdc.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 28 Oct 2019, Christoph Hellwig wrote:

> From: Damien Le Moal <damien.lemoal@wdc.com>
> 
> When running in M-mode we can't use SBI based drivers.  Add a new
> CONFIG_RISCV_SBI that drivers that do SBI calls can depend on
> instead.
> 
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> Reviewed-by: Anup Patel <anup@brainfault.org>
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Thanks, queued for v5.5-rc1.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
