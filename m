Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F5AF2219
	for <lists+linux-riscv@lfdr.de>; Wed,  6 Nov 2019 23:48:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vJyeuz5AtcOX7wzkM6QFdAvkAbdBmtnsCo2azOmVYpw=; b=r1djAentwnG/wd
	0YlBk8fC91njvJg+BM9X42TOhBbNz0gjWRSWtDGRfOnBya36EvCbZ0+8HODYcHMIDskHyU8OVEDYS
	7i/WLoIf7LuYYTtgWTtyTTgSaRK44eGZDMPO8DZMZ+asnlAKZySdttpxJWtcsrb7KctdZvyTxfOEe
	C+iAkKfuP2gwV6u8RT5E3vLgM5Owttin0QKa5qlw+MZPwBAC7p5Ojm6+cH0IsrI9hgF8+gk3ZFG+l
	i2vYeUWyBbUdf0GiTSx+SrCNStRMK0Edzub6cGezZAa2l/2Gc//kuFwpD1vMvWChbf5cA447F0JmS
	/pPa0WKJrabf/pOhc4Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSU5y-0004h2-Nd; Wed, 06 Nov 2019 22:48:10 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSU5u-0004fQ-F8
 for linux-riscv@lists.infradead.org; Wed, 06 Nov 2019 22:48:07 +0000
Received: by mail-pf1-x442.google.com with SMTP id x28so256188pfo.6
 for <linux-riscv@lists.infradead.org>; Wed, 06 Nov 2019 14:48:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=e4ahwvwEenCW3Ssy97Go1KwhMTmop2CdID3ppVgbYFg=;
 b=IreTXyYzkcyCRUuEUBoIo9m1mKz28IIQSdPSFoqi+uqqHfkqGViv23VBDhGs1OsYra
 qQP4cYTXyZPbHCM4+142sFe37YyZFQDoaOl3XIzdt0A6sWejvp0EgytFgqkd/Ju6Jmf1
 Zalng+bdd0Wbjg7KYwZpQNF9MDmNcm80wTOJOvWiiZ/C+BVgklJHj9fijYhUrHtu/wR2
 1lhD+AUpRU5FedUIofnCYApIfTWe8b+cW7HHubnSOEVhoPe4xzUC905NII3Y48GvZmyj
 biq3EpJrRwue6J8Md3V+8SRCtOZuxt+Ly/L3dyQSWd/JQksp6xvBGaLD6zzsErsXlDMc
 Q33A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=e4ahwvwEenCW3Ssy97Go1KwhMTmop2CdID3ppVgbYFg=;
 b=Kp+o2SunH0zdAgTL3KLxcHvPC3Hp0pN46iSaaq8jtQt3KzQHLjk2iZI1ihggkTZAnw
 IJTkOIvkF2mdCEBJcMFbh6ZU2UVXymK6RQqIX9vSn8afvCbyuhGIKJ/f3Zt+vI7ikXtb
 H3FjSLw+CWjjFK1OVvreNdz0/tgeCg9ZtRif101pBjcYstzHJu0jmuZoN2upyyX/REwE
 BSWPT8tC3bxbu/NDLNWMh4CNWLYl0FFvIu6U93YAxEsbiWQznwQVA42EPAYPeI7HJ0ne
 AVpCDHPK80TouTKilmcf1bPFE7FYConOihejKFS4Pn5yMhzoMs/+PH3b6byB1xpHBqJL
 +vsA==
X-Gm-Message-State: APjAAAUVZeL9WULiX9V3KWE4Qo14gyee3hsOJ3lb3Osy3ztuZEJ09Ftb
 RtlT66MAVrtzuU9i4ZLdAFMnOQ==
X-Google-Smtp-Source: APXvYqyr+y0D1jq1rNuNO65CIHswePbMJN08xlpb8XRXVBMMBoJvb6+TV4m3ywBKKJveiNntlfYEBg==
X-Received: by 2002:a63:395:: with SMTP id 143mr325134pgd.93.1573080485690;
 Wed, 06 Nov 2019 14:48:05 -0800 (PST)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id o1sm112685pgm.1.2019.11.06.14.48.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 14:48:04 -0800 (PST)
Date: Wed, 6 Nov 2019 14:48:04 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH] riscv: clean up the macro format in each header file
In-Reply-To: <1572248567-22504-1-git-send-email-zong.li@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1911061423390.20606@viisi.sifive.com>
References: <1572248567-22504-1-git-send-email-zong.li@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_144806_635727_FC8FC436 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv@lists.infradead.org, palmer@sifive.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 28 Oct 2019, Zong Li wrote:

> There are many different formats in each header now, such as
> _ASM_XXX_H, __ASM_XXX_H, _ASM_RISCV_XXX_H, RISCV_XXX_H, etc., This patch
> tries to unify the format by using _ASM_RISCV_XXX_H, because the most
> header use it now. This patch also adds the conditional to the headers
> if they lost it.
> 
> Signed-off-by: Zong Li <zong.li@sifive.com>

Thanks, queued for v5.5-rc1.

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
