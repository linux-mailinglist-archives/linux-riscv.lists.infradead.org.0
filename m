Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74933CDDB
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 16:03:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S8VFqadn/zKSOJwsZDO8P2M29h5sqYX9oNiSo2KEZn4=; b=Njgnp2mRg1J7MN
	BTlILSOwzI5UquAEJmwYXN2IYg5mIaIss+zcVRoHUBoWzezkrzf5e8sF1eTVPi3WkJDamegMffnvo
	1OGmamI0UxnAV3uQU72KE5/AH+f2roJSYbbD//49clGE2J3zhRwZozvpqrb3WGY2cej1pGdxo8uHu
	YhMlYYANk0oLuLflfYYAUUcN85KerotrzRE/FEITjabi/q/RKtkwWdfb/GZvs/Blf+ILNGqOjjGKH
	H+Nu1epkHW95Ojq1AZA9PTmvt4mt+uUW7V4alH8WRCP2u6ILKEpTzzLVyyk7qC9UpSZ8ZkWtgDfz/
	cSCdzNkgrcfUDi9QU1gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahMT-0007Tl-Hl; Tue, 11 Jun 2019 14:02:53 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hahMQ-0007TM-6n
 for linux-riscv@lists.infradead.org; Tue, 11 Jun 2019 14:02:51 +0000
Received: by mail-ed1-x541.google.com with SMTP id p26so16244631edr.2
 for <linux-riscv@lists.infradead.org>; Tue, 11 Jun 2019 07:02:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=2gfZ/rvfS6cBNYm+e0YvZYSl5PiXit0kV6j3G3Ublz0=;
 b=YN+U1Sfoe5X0WEJmRiZCoZ6txn0T3PQHfz7IPxLUr2GidoeFP9ClBzpaN74PSb1HKk
 OrAnLpBr1lelcvRpNWYCU7hknykWx33G6ZBErzLwcwEQc8sEftADqWjdV500vgIEOaep
 +qkCfVuT8YILFh7O+7Rb3l4O4P1xVRtqFT1ggAGn0MEuofbBVKo7V5GTP609Wbw/foOo
 SsDG41bMALVfw2SMhtSMjignuvivFA7O/x3j6kp0OEruvO1l5gyx3Pet3O/Q7VrvzE8N
 bud4MbOXde07au7KV7kj/A6+J4VAhgAqzueMXGdp8wpNm5xt+KkAYBC+GIln2o2uvlSd
 i9TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=2gfZ/rvfS6cBNYm+e0YvZYSl5PiXit0kV6j3G3Ublz0=;
 b=SmM6eem0hs9ym0Zijd8Fm5bAQ95gGpai6nrWmf0teVrNDX2rO4bIxPa0VGj5VFCKML
 dKheFPR9gBUP2EdbLWUOqHsMzYug/CYctrU8LxwXxZ3M6iPkMTWHxawIykP0vnOOe9MW
 a6w6Uw/vY2o9BLnREbrUO+LsYHQfPY7Qrv/3xQDTtt+zEkfEB/uOj2ACt29rPV66cd9Z
 qnqVu+wZ6cDIdH/y72NEY4zZJRLHP8ElXkQL6wKRiat5h+lCnNEJzLaqsRSxfdmTQkhs
 LFco8EqqUfd3PYycBVNOrU2CVIfoGFY1GwbVygpWsjlQUkaE81d/FSx8TE/uGq9DgPgN
 yGiQ==
X-Gm-Message-State: APjAAAViCtuBhFjwfVCsVso5cjVMSdhPff2cUugQkMMk0KcxW0Xye/EX
 o0Vz9lOFOvXba9+pdWM8s7Vn5g==
X-Google-Smtp-Source: APXvYqyxzXTcEj3A8GoFN3mRfOB5Zkiii7ZBzwXCmBZfm5X7IXE6vR8LnE9g3zq+csOxr9iI0m1f0A==
X-Received: by 2002:a17:906:a417:: with SMTP id
 l23mr29058497ejz.20.1560261768203; 
 Tue, 11 Jun 2019 07:02:48 -0700 (PDT)
Received: from localhost (mpp-cp1-natpool-1-037.ethz.ch. [82.130.71.37])
 by smtp.gmail.com with ESMTPSA id bo11sm2301517ejb.12.2019.06.11.07.02.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 07:02:47 -0700 (PDT)
Date: Tue, 11 Jun 2019 07:02:47 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Andreas Schwab <schwab@suse.de>
Subject: Re: [PATCH] riscv: export flush_icache_all
In-Reply-To: <alpine.DEB.2.21.9999.1906110648120.16050@viisi.sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1906110701210.16050@viisi.sifive.com>
References: <mvm7e9spggv.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906110648120.16050@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_070250_257159_CB45786B 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 Christoph Hellwig <hch@lst.de>, Gary Guo <gary@garyguo.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 11 Jun 2019, Paul Walmsley wrote:

> On Tue, 11 Jun 2019, Andreas Schwab wrote:
> 
> > Before 58de77545e53 ("riscv: move flush_icache_{all,mm} to cacheflush.c"),
> > flush_icache_all was a macro, but it is used by a module:
> > 
> >   ERROR: "flush_icache_all" [drivers/misc/lkdtm/lkdtm.ko] undefined!
> > 
> > Signed-off-by: Andreas Schwab <schwab@suse.de>
> 
> Thanks, queued for v5.2-rc.  Added a "Fixes" line:
> 
> Fixes: 58de77545e53 ("riscv: move flush_icache_{all,mm} to 
> cacheflush.c")

Just discussing with Christoph now.  Agree with him that the lkdtm module 
is too niche, and in general we don't want modules calling 
flush_icache_all(), so dropping this patch for now.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
