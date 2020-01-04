Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 104AA12FF70
	for <lists+linux-riscv@lfdr.de>; Sat,  4 Jan 2020 01:12:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xKt2PPmd3ZVH3skLSMZLWe5gk5gPeWTzpSDIkOKvuyM=; b=GZPmdU+xvIaX++vSQWMJ8UT+R
	eqbC5XddZMjsJZxJfmAWKqb8tR9MnMuzWd2OsDTZFPwEIradtzaEyoSKPK7eM5WXGFrh/wWpl5pUj
	ClwANd37igHaFNPHNFl3uelmIQdukr6C1SQmQBiqxrQ28iN8uadmGQCGBb4sfKp5mTc/wy+sjCao3
	CQJwEAsgMK/g4Lq50y33IfdmcpATeqQosaPe4PXCDxXlb5CbXV7u6LUCteLWdudUx1R9nSOkR6G5A
	VLK1HjCZz3qEb9TpIcOfOpt8osrAVgc94VU51UNOJY59T6dkJ1oVI7b98+H2+HSVPso3s+c2OR8g8
	LKBA6qSRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inX2s-0004iy-Ro; Sat, 04 Jan 2020 00:11:58 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inX2p-0004iZ-CD
 for linux-riscv@lists.infradead.org; Sat, 04 Jan 2020 00:11:56 +0000
Received: by mail-il1-x141.google.com with SMTP id f10so37972353ils.8
 for <linux-riscv@lists.infradead.org>; Fri, 03 Jan 2020 16:11:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=xKt2PPmd3ZVH3skLSMZLWe5gk5gPeWTzpSDIkOKvuyM=;
 b=cKfo4acMI290WcTrTV19qCiykdAdniIGYGGE5KiHM30OB8SfCxIKpuBwAxJY7vY7qO
 kIj6AwP6PnhvGoW/3ywmR+3axhct15ptkRvqRDHXLasYSfLjMiwvvIzNGeUdRalDi4XU
 mzABFHWUnfDK3qqqm8hGD8Nznxroh9Jsd09lwY0uXpmpisrTrxDWWilImmPtM/NXqMsk
 GxoJYdrrfA1Wq+9fwSEmbkbVOjOlYbwnNinq54Gs21jSzuLxD5VPYBhL+4G8OvVAJuXa
 58bt4kvQueCv8DPcwkWjK+tY73qS0073Ij8wtWR76qvpDQT2pLcdPR79vgE/nmIj+nTS
 O1Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=xKt2PPmd3ZVH3skLSMZLWe5gk5gPeWTzpSDIkOKvuyM=;
 b=b+Nj+NXoihTpnTKEqPCZ9urjvGRLpg41KRIb563jrlc4HKVQ7BXEw2YrzPowoDV8Os
 Gn9uj0dqA1mshinHYmgmimrZac9sWbQiUQ54fafAYIQTZuh3hqGF/jhFdO+FropnGxVZ
 JitC+fkED+nEVREics8NF/OzQbbxkd8pukYd9+6SZU0bHP2uQG72gakTcVtuIKp/8E0D
 lOK1WWZ8BWduM0wVJJ1AgRju99lUD5zgCrzMV2BVwdN16k3PbrvqIVHLQ25FIShuFWlz
 snCWu9h89SowgX4yrzVJmcDRDtiLN4t1tfa7oADJNTG2Ig5n+42nPbDIRv4VN8PDeeFm
 0YGg==
X-Gm-Message-State: APjAAAXf+jNdRrSKeO2x2ibOBdhO/Fyk0tPAj8JLjq6WIk6BeroPPI67
 zIoE2zz3MxGsekp3jx1Yj2QT1g==
X-Google-Smtp-Source: APXvYqzYxki3BWxfIgAXwBHFoYf19/w9nt614PRZ+UMaMbO8xOSp+wTCGb8tjR09++TXHdu+cm5iRw==
X-Received: by 2002:a92:d308:: with SMTP id x8mr79828277ila.42.1578096712752; 
 Fri, 03 Jan 2020 16:11:52 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id v10sm15220324iot.12.2020.01.03.16.11.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 16:11:52 -0800 (PST)
Date: Fri, 3 Jan 2020 16:11:50 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH] riscv: gcov: enable gcov for RISC-V
In-Reply-To: <20200102030954.41225-1-zong.li@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.2001031611430.283180@viisi.sifive.com>
References: <20200102030954.41225-1-zong.li@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_161155_415482_DD44AB89 
X-CRM114-Status: UNSURE (   6.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
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
Cc: aou@eecs.berkeley.edu, linux-doc@vger.kernel.org, corbet@lwn.net,
 linux-kernel@vger.kernel.org, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 2 Jan 2020, Zong Li wrote:

> This patch enables GCOV code coverage measurement on RISC-V.
> Lightly tested on QEMU and Hifive Unleashed board, seems to work as
> expected.
> 
> Signed-off-by: Zong Li <zong.li@sifive.com>

Thanks, queued for v5.5-rc.


- Paul

