function onCreate()      
      -- background shit
	makeAnimatedLuaSprite('stageback', 'fatal/launchbase', -545, -345);
	scaleObject('stageback',3.7, 3.7);
      setProperty('stageback.antialiasing', false);

	makeAnimatedLuaSprite('stage', 'fatal/domain2', -545, -345);
	scaleObject('stage',3.7, 3.7);
      setProperty('stage.antialiasing', false);

	makeAnimatedLuaSprite('true', 'fatal/truefatalstage', -545, -345);
	scaleObject('true',3.7, 3.7);
      setProperty('true.antialiasing', false);

      addLuaSprite('true', false);
      addAnimationByPrefix('true', 'idle', 'idle',9, true)
	addLuaSprite('stage', false);
      addAnimationByPrefix('stage', 'idle', 'idle',9, true)
      addLuaSprite('stageback', false);
      addAnimationByPrefix('stageback', 'idle', 'idle',9, true)
	
end

function onBeatHit()

     if curStep >= 0 and curStep < 255 then 

        setProperty('timeBar.color', getColorFromHex('08C1F8'))-- bf
     end

     if curStep >= 255 and curStep < 1151 then 

        setProperty('timeBar.color', getColorFromHex('FF0000'))-- fatal
     end

     if curStep >= 1151 and curStep < 1983 then 

        setProperty('timeBar.color', getColorFromHex('FC2222'))-- fatal glitched
     end

     if curStep >= 1983 then 

        setProperty('timeBar.color', getColorFromHex('A20101'))-- true fatal
        setPropertyFromGroup('opponentStrums', 0, 'x', defaultPlayerStrumX0 + 1000)
        setPropertyFromGroup('opponentStrums', 1, 'x', defaultPlayerStrumX1 + 1000)
        setPropertyFromGroup('opponentStrums', 2, 'x', defaultPlayerStrumX2 + 1000)
        setPropertyFromGroup('opponentStrums', 3, 'x', defaultPlayerStrumX3 + 1000)

        setPropertyFromGroup('opponentStrums', 0, 'y', defaultPlayerStrumY0 + 1000)
        setPropertyFromGroup('opponentStrums', 1, 'y', defaultPlayerStrumY1 + 1000)
        setPropertyFromGroup('opponentStrums', 2, 'y', defaultPlayerStrumY2 + 1000)
        setPropertyFromGroup('opponentStrums', 3, 'y', defaultPlayerStrumY3 + 1000)
     end
end

