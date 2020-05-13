Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BD41D20D8
	for <lists+linux-riscv@lfdr.de>; Wed, 13 May 2020 23:22:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tGOgO3DH7KY7eGZj+l93dH69/CZG3Xhtwrztz8Xi5EY=; b=Ybr2hL6My+ocBpMzp/IdYIKvf
	rd4ARc8JJqtyzn+xDnTW+a58MqXGpufqwJHbSk1MioRBgF2GSIjUON92LDZ+gewPh5aUJw37sI8eo
	4JopYjVBzQvthLwrVGC4hY701qvysYoIzOWXqDBNk2eGrHak1kBgxWs4fpdvJ7w8A6Qu2Tuw4vPGl
	TYaextgRhKoPjcQiC7GMmVJ/Ot9nkCfZUYhUZi2Os/TftzyjpyACtwkwuuyvGI6bCCq9j+sAofG/x
	LKw2/n+wMHRh2GDZMlnFp7zJBWVVA63Fa9rT46RNzdKbBTrpx3Um5dXrS1G1BEOzha5hd9RD6PQJH
	/ERqzKCmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYypQ-00055Q-0e; Wed, 13 May 2020 21:22:12 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYypM-000553-VW
 for linux-riscv@lists.infradead.org; Wed, 13 May 2020 21:22:10 +0000
Received: by mail-io1-xd43.google.com with SMTP id e18so94786iog.9
 for <linux-riscv@lists.infradead.org>; Wed, 13 May 2020 14:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=tGOgO3DH7KY7eGZj+l93dH69/CZG3Xhtwrztz8Xi5EY=;
 b=hOZtlEBO2LKyP8bHzFDDLBLE+AyP3GW51R2Bgu0+e70rfUZ9rIiczo3pB8s/u3VM70
 K0T9RD7NVB7brgPgne9G7Y9DKSqMwc34kmUSNaN1+tKmQKMyi7b2a/DSMwe/zY5/KEhq
 fQSq0XIBJbkr+PAekXcISSvdYkIgp1CyKT8+VJYoZrJ8KYzz0lTZCE6/MFJ87T2KQroR
 EtSZS930x4uhhtysV1nP2Ob/eQgc7gMe8HsNnHtxeeVeS/yekgc2kD61tz8HifWs7qcn
 aDv4sBzqEuxANANls7LL4SbixAH4tEKQkZN+1IFCsDhaPLM0Ftld10Il4H8V74Y2oTRm
 cjMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=tGOgO3DH7KY7eGZj+l93dH69/CZG3Xhtwrztz8Xi5EY=;
 b=nkboof9G5w90l5GLnwNjSO9GqjfMVptmpVw3GqOfCUNRvYVIXu7SKa3QbjXJGlDcDF
 BmHF9SbY3Mceb5cd4Sy2JDx+IsEXJIf/d6ulQP4TasQK4LAWVFUPZ26ZVUY0+9yyfm31
 2hPpTVHn8QsqD9+czNQFW7ndjZ7dybUintvwzpQBNgaseim68U6sHA+9VepOx2wPbynE
 xlcWTtpQKQiaP7UmnrQbh47rOhp2RbRT5G32AB/DPIyjX4RTwPmtC6VZ1T29qHg7kfq7
 F3U3uBva3cF0YVmSzXzGtfBAKBcIdueigUeA5FxAuecwblcDDK/soBKiq8UyvvyZzKr2
 FkgQ==
X-Gm-Message-State: AGi0PuZNItanu9w5KZuK5IN5MEwxDRHSfvYmM4t3BdWX5/3nhqDlIvlq
 cpWl9BCpMLoZHvKiHfKeJ1ktD1OphUjQZg==
X-Google-Smtp-Source: ABdhPJxZH8ktcsDq2DKyrfz9mzAZuFt485i9jtYbwe1JvROnYtyNj3dkM5M5qWN962L5ecYak/nF8Q==
X-Received: by 2002:a05:6638:277:: with SMTP id
 x23mr1463557jaq.122.1589404927597; 
 Wed, 13 May 2020 14:22:07 -0700 (PDT)
Received: from localhost ([2601:8c4:0:32f::7b7])
 by smtp.gmail.com with ESMTPSA id j90sm272733ilg.70.2020.05.13.14.22.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 14:22:06 -0700 (PDT)
Date: Wed, 13 May 2020 14:22:01 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/5] spi: dt-bindings: sifive: Add missing 2nd register
 region
In-Reply-To: <20200512204543.22090-1-robh@kernel.org>
Message-ID: <alpine.DEB.2.21.9999.2005131421010.18879@viisi.sifive.com>
References: <20200512204543.22090-1-robh@kernel.org>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_142209_182127_B3331168 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 12 May 2020, Rob Herring wrote:

> The 'reg' description and example have a 2nd register region for memory
> mapped flash, but the schema says there is only 1 region. Fix this.
> 
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Palmer Dabbelt <palmer@dabbelt.com>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: linux-spi@vger.kernel.org
> Cc: linux-riscv@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> Please ack, dependency for patch 5.

Acked-by: Paul Walmsley <paul.walmsley@sifive.com> 


- Paul

