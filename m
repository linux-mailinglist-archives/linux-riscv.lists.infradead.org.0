Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1368718A212
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Mar 2020 19:03:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=+eM9a9W2vn4WlLm8RIK9kwfFrKjYpl0TGuyjyC6IJgo=; b=tSgTqaWJCbbHpv
	S2AkrwcmWs99YOKiqwsH/Dl2GkGeKxaW5spHPKEuBjAKEOgLFtqAgyKROj9UTKJPKFJFrdXMrmMHT
	JWt7X3hvjNX1U60p6U0DZb6i5Ly9N44MvWi9LFaN6QN7HsHLm2kGvGYGwAHyVPxvJavdvv9AVue/M
	lAph71ehnrMS9cpFBOrC00W3GN0KP7ZB6Mq+mF8kCRdixBsHflLEofy0hSagu0x60Ls4W/8++H5Y4
	bGdBP76F3Lgi1gKdxG5kgAzX54wKnmcRf86YECbh9jv6oFn4hZzMlq2UCRDNllb31p6ENWjYrkfc3
	req+z+T1SlRLInSUQHIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEd2R-0005zH-B9; Wed, 18 Mar 2020 18:03:31 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEd2N-0005yp-FG
 for linux-riscv@lists.infradead.org; Wed, 18 Mar 2020 18:03:29 +0000
Received: by mail-pj1-x1043.google.com with SMTP id q16so1332061pje.1
 for <linux-riscv@lists.infradead.org>; Wed, 18 Mar 2020 11:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=+eM9a9W2vn4WlLm8RIK9kwfFrKjYpl0TGuyjyC6IJgo=;
 b=TQ4vvSRHjfw0ztqFIOdjMIULpDidGu4tlLnCZMkGpebg19wsHIF76ItRD7BT/QLpnr
 CcOfP7pAJC8M6pE3U/SZx0FDUq7QjU1b/pxzuD9NzeBHx5HddS41x2b89+JB5r/r2StD
 t+gwJ0Z7V1WtEAYuP4HlIpyLSgSw1xf7ICuQXGCV6xspEAshMzq7VFxHyZP4op0rALur
 PK9co4Nk0sL6L7+FY4V3NvDPiHHZvjCSH/g9M5M3dPhZf2d1U4g5bVBaKq6ol73RlRLY
 x2aSWbP+1CRVvN5ie5nfhX3k70atmGmAhAv9LpFSiZ9M6sVJUg3Re38Fm8VUZNG7UO+i
 QLNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=+eM9a9W2vn4WlLm8RIK9kwfFrKjYpl0TGuyjyC6IJgo=;
 b=TK9M9ugVENorSKXArXcTdoKOQWXcKgIKLMWEGuuveQW+IRVsDnS82TYyg/E+EuiIpU
 B6MD53yKWmKq6uHr4dFmop/xnZgS0xbT+EnV5nkAkCFkadlUtrINsyzN6fxgqtTzeY88
 giJphRzhnExh7V+e34LIwSffX3B1rUlF5LcKcKJ+8i6p42Zf7k+1mh6H0fqjwqg3zY4c
 mRxD0d02194o/VxkhzAc2RSS/GjBMxSVu3Y8GHlaYY/mxkS+yow7DYHSJbr1yQVWAKND
 /x/jiNNRC/6vqP3m5/V3tuLjVi1Te8inCKyU9qt7HIfi67+aIUIktVXfBCBJeeMCMaZh
 jc5w==
X-Gm-Message-State: ANhLgQ2rRrNdalbGpNX37aMVw+GkZhbAgz9JlQRVvoQis4lwsuSkG4iR
 1VTHnDlHM3uuktkJgfMB7tG7hA==
X-Google-Smtp-Source: ADFU+vtxf8uer2iHkDwG5t0VNkx7ErzNHbyv2jFSMSBDIgV65AZlPIcLPKge2X6sjaRdnytbtfj3Jw==
X-Received: by 2002:a17:902:9a03:: with SMTP id
 v3mr1016462plp.223.1584554606031; 
 Wed, 18 Mar 2020 11:03:26 -0700 (PDT)
Received: from localhost (c-67-161-15-180.hsd1.ca.comcast.net. [67.161.15.180])
 by smtp.gmail.com with ESMTPSA id z7sm62477pfz.24.2020.03.18.11.03.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2020 11:03:25 -0700 (PDT)
Date: Wed, 18 Mar 2020 11:03:25 -0700 (PDT)
X-Google-Original-Date: Wed, 18 Mar 2020 10:32:24 PDT (-0700)
Subject: Re: [PATCH 1/5] kgdb: Add kgdb_has_hit_break function
In-Reply-To: <1583225220-26137-1-git-send-email-vincent.chen@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: vincent.chen@sifive.com
Message-ID: <mhng-a17f59fc-9e51-4c9d-9b4b-4c707825c459@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_110327_649615_B659342A 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: daniel.thompson@linaro.org, Paul Walmsley <paul.walmsley@sifive.com>,
 dianders@chromium.org, vincent.chen@sifive.com, jason.wessel@windriver.com,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 03 Mar 2020 00:47:00 PST (-0800), vincent.chen@sifive.com wrote:
> The break instruction in RISC-V does not have an immediate value field, so
> the kernel cannot identify the purpose of each trap exception through the
> opcode. This makes the existing identification schemes in other
> architecture unsuitable for the RISC-V kernel. To solve this problem, this
> patch adds kgdb_has_hit_break(), which can help RISC-V kernel identify
> the KGDB trap exception.
>
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> ---
>  kernel/debug/debug_core.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/kernel/debug/debug_core.c b/kernel/debug/debug_core.c
> index 2b7c9b67931d..01bc3eea3d4d 100644
> --- a/kernel/debug/debug_core.c
> +++ b/kernel/debug/debug_core.c
> @@ -417,6 +417,18 @@ int kgdb_isremovedbreak(unsigned long addr)
>  	return 0;
>  }
>
> +int kgdb_has_hit_break(unsigned long addr)
> +{
> +	int i;
> +
> +	for (i = 0; i < KGDB_MAX_BREAKPOINTS; i++) {
> +		if (kgdb_break[i].state == BP_ACTIVE &&
> +		    kgdb_break[i].bpt_addr == addr)
> +			return 1;
> +	}
> +	return 0;
> +}
> +
>  int dbg_remove_all_break(void)
>  {
>  	int error;

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

