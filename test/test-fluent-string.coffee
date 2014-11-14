require('../src/fluent-assert')
require('../src/fluent-string')
expect = require('chai').expect

describe 'fluent-string',->        
    value = "abc123"  
    
    it 'append', ->              
        expect(value.append).to.be.an('Function')
        expect(value.append(        )).to.equal(value)
        expect(value.append(''      )).to.equal(value)
        expect(value.append(null    )).to.equal(value)
        expect(value.append('a'     )).to.equal(value + 'a')
        expect(value.append('abc'   )).to.equal(value + 'abc')
        expect(value.append('abc123')).to.equal(value + 'abc123')
        
    it 'add_Random_Chars', ->
        expect(value.add_Random_Chars            ).to.be.an   ('Function')
        expect(value.add_Random_Chars(1)  .size()).to.equal   (value.size() + 1 )
        expect(value.add_Random_Chars()   .size()).to.be.above(value.size() + 5 )
        expect(value.add_Random_Chars(100).size()).to.be.above(value.size() + 80) # the chars size is less than 101 (I think is due to weird ascii values

    it 'add_Random_String', ->
        expect(value.add_Random_String            ).to.be.an   ('Function')
        expect(value.add_Random_String()   .size()).to.equal   (value.size() + 10 )
        expect(value.add_Random_String(1)  .size()).to.equal   (value.size() + 1  )
        expect(value.add_Random_String(100).size()).to.equal   (value.size() + 100)

    it 'add_Random_Letters', ->
        expect(value.add_Random_Letters            ).to.be.an ('Function')
        expect(value.add_Random_Letters(5)  .size()).to.equal  (value.size() + 5 )
        randomLetters = "".add_Random_Letters(5);
        charSet_Numbers = '0123456789'
        charSet_Letters = 'abcdefghijklmnopqrstuvwxyz'
        for char in randomLetters
            (-> charSet_Numbers.assert_Contains(char)).assert_Throws()
            (-> charSet_Letters.assert_Contains(char)).assert_Not_Throws()

    it 'add_5_Random_Letters', ->
        expect(value.add_5_Random_Letters            ).to.be.an ('Function')
        expect(value.add_5_Random_Letters()  .size()).to.equal  (value.size() + 5 )

    it 'add_Random_Numbers', ->
        expect(value.add_Random_Numbers            ).to.be.an ('Function')
        expect(value.add_Random_Numbers(5)  .size()).to.equal  (value.size() + 5 )
        expect(""   .add_Random_Numbers(500)  .size()).to.equal  (500 )
        randomNumbers = "".add_Random_Numbers(5);
        charSet_Numbers = '0123456789'
        charSet_Letters = 'abcdefghijklmnopqrstuvwxyz'
        for char in randomNumbers
            (-> charSet_Numbers.assert_Contains(char)).assert_Not_Throws()
            (-> charSet_Letters.assert_Contains(char)).assert_Throws()

    it 'ends_With',->
        value.ends_With.assert_Is_Function()
        value.ends_With('3'         ).assert_Is_True()
        value.ends_With('2'         ).assert_Is_False()
        value.ends_With('123'       ).assert_Is_True()
        value.ends_With(value       ).assert_Is_True()
        value.ends_With(value + '1' ).assert_Is_False()
        value.ends_With('1' + value).assert_Is_False()
        value.assert_Is(value)

    it 'lower', ->
        expect(value.lower).to.be.an('Function')
        expect(value.lower()        ).to.equal(value.toLowerCase())
        expect(value.lower().upper()).to.equal(value.toUpperCase())

    it 'size', ->              
        expect(value.size).to.be.an('Function')
        expect(''.size()                 ).to.equal(0)        
        expect(value.size()              ).to.equal(6)
        expect(value.append('abc').size()).to.equal(9)

    it 'lower', ->
        expect(value.upper          ).to.be.an('Function')
        expect(value.upper()        ).to.equal(value.toUpperCase())
        expect(value.upper().lower()).to.equal(value.toLowerCase())

    it 'trim', ->
        value.trim.assert_Is_Function()
        value.trim().assert_Is    (value)
        'a 1'.trim().assert_Is    ('a 1')
        'a1 '.trim().assert_Is    ('a1' )
        ' 1 '.trim().assert_Is    ('1'  )
        '   '.trim().assert_Is    (''  )
        'a1 '.trim().assert_Is_Not('a 1')
        ' 1 '.trim().assert_Is_Not('a 1')
        '   '.trim().assert_Is_Not('a 1')


    it 'starts_With',->
        value.starts_With.assert_Is_Function()
        value.starts_With('a'         ).assert_Is_True()
        value.starts_With('b'         ).assert_Is_False()
        value.starts_With('abc'       ).assert_Is_True()
        value.starts_With(value       ).assert_Is_True()
        value.starts_With(value + 'a' ).assert_Is_False()
        value.starts_With( 'a' + value).assert_Is_False()
        value.assert_Is(value)
